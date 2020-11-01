from re import match


ETIQUETA: None                                                           
CODOP: None
OPERANDO: None
resultado= None
sistemaNumerico= " "




def t_COMENTARIO(t):     #Funcion que identifica comentarios
    LineaAnalizada= str(t)
    SiContiene= LineaAnalizada.find(";")
    
    if len(LineaAnalizada) > 80:    #Valida longitud
        print("Error, longitud de comentario no valida") 
    else:
        if SiContiene==2 :  #Si encuentra un ; en la primera posicion lo identifica como comentario
            print( "Comentario ")


def t_ETIQUETA(t):      #Funcion que identifica etiqueta
    LineaAnalizada= str(t)

    Patron_Busqueda= re.compile(r'[\w_]+[\s$]+')  #Expresion regular 
    ETIQUETA= re.search(Patron_Busqueda, LineaAnalizada) #Encuentra las coincidencias en la linea
    if ETIQUETA is None:
        print("ETIQUETA = null")
        return None
    Indice=LineaAnalizada.index(ETIQUETA.group())
    Tamaño=ETIQUETA.group().strip()
    if Indice == 2 and LineaAnalizada[Indice].isalpha():
        if len(Tamaño)<=8:
            etq= ETIQUETA.group()
            return etq
             
        else:
            return "Error, longitud invalida"
              
    else:
        etq= None
        return etq


def t_CODOP(t):     #Funcion que identifica el CODOP
    LineaAnalizada= str(t)
    SiContiene= LineaAnalizada.find(";")
    if SiContiene!=2:   #Valida que no sea comentario
        PatronCODOP= re.compile(r'[\s][a-zA-Z]{1,5}[.]{0,1}[a-zA-Z]{1,5}[\s]*')#\s concide con espacio en blanco ultimo elemento de la linea y termina con el, tiene que haber 0 o más
        CoincideCODOP = re.search(PatronCODOP, LineaAnalizada)
        if CoincideCODOP is None:
            return None
        Indice=LineaAnalizada.index(CoincideCODOP.group())
        nospace=CoincideCODOP.group().strip()#elimina los espacios de la cadena
        if Indice > 2 and len(nospace)<=5:#Si el CODOP no esta al inicio y la cadena no tiene más de 5 caracteres:   
            #print("CODOP= "+ CoincideCODOP.group())
            resultado= CoincideCODOP.group()
        else:
            print("CODOP= Error, longitud invalida")
            
       # if CoincideCODOP.group().contains("End") or CoincideCODOP.group().contains("end") or CoincideCODOP.group().contains("END"):#Si la coincidencia contiene End:
           # sys.exit() #Finaliza el programa 
    else:
        print("CODOP= null") #Si no encuentra un CODOP regresa null

    return resultado

def t_OPERANDO(t, rel, inm,inh):
    
    LineaAnalizada= str(t)
    
    #EXPRESIONES REGULARES PARA IDENTIFICAR CADA UNO DE LOS MODOS DE DIRECCIONAMIENTO
    EsOperando= r'[\s]([@]|[%]|[$]|[0-9]|[,]|[-]|[[]|A|B|D|[\w_])'
    Directo=r"[\s]([%][0-1]{1,8}|[$][0-9A-F]{1,2}|[@][0-7]|[@][0-7][0-7]|[@][0-3][0-7][0-7]|\d|\d\d|1[0-9][0-9]|2[0-4][0-9]|2[5][0-5])(')"
    Extendido=(r"[\s]([%][0-1]{9,16}|[$][1-9A-F]{3,4}|[@][4-7][0-7][0-7]|[@][0-7][0-7][0-7][0-7]|[@][0-7][0-7][0-7][0-7][0-7]|[@][0-1][0-7][0-7][0-7][0-7][0-7]|2[5][6-9]|2[6-9]\d|[3-9]\d\d|[0-9]\d\d\d|[0-5]\d\d\d\d|[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5]|[a-zA-Z]+[\w])(')")
    Indexado5bits=(r'([-]\d?|[-]1[0-5]?|[\s]\d?|1[0-6]?)([,])(?i)(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    Indexado9bits=(r'(?i)([-]1[7-9]|[-][2-9]\d|[-]1[0-9]\d|[-]2[0-4][0-9]|[-]2[0-5][0-6]|[\s]1[6-9]|[\s][2-9]\d|[\s]2[0-4][0-9]|[\s]2[0-5][0-5])([,])(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    Indexado16bits=(r'(?i)(2[5][6-9]|[3-9]\d\d|[0-9]\d\d\d|[0-5]\d\d\d\d|[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])([,])(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    IndexadoIndirecto16bits=(r"\[(\d\d?\d?\d?|[0-5][0-9][0-9][0-9][0-9]|[6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])(,)(?i)(PC|Y|X|SP)\]")
    AutoPrePostDecrementoIncremento=(r"[\s][1-8](,)(?i)([+|-](X|Y|SP)|(X|Y|SP)[+|-])")
    IndexadoAcum= (r"(A|B|D)(,)(?i)(X(?![]])|Y(?![]])|SP(?![]])|PC(?![]]))")
    IndexadoAcumIndirecto=(r"\[(?i)([D])(,)(?i)(PC|Y|X|SP)\]")
    Relativo8bits=(r"[\s]([\w_]){1,8}(')")
    Relativo16bits=(r"[\s]([\w_]){9,16}(')")
    Inmediato8bits= (r"[\s][#]([%][0-1]{1,8}|[$][0-9A-F]{1,2}|[@][0-3][0-7]?[0-7]?|\d|\d\d|1[0-9][0-9]|2[0-4][0-9]|2[5][0-5])(')")
    Inmediato16bits= (r"[\s][#]([%][0-1]{9,16}|[$][0]*[1-9A-F]{3,4}|[@][4][0-7][0-7]|[@][0-7][0-7][0-7][0-7][0-7]|[@][0-1][0-7][0-7][0-7][0-7][0-7]|2[5][6-9]|2[6-9]\d|[3-9]\d\d|[0-9]\d\d\d|[0-5]\d\d\d\d|[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])(')")
    Inherente= (r"[\s](')(,)")
    DirectivaFCC= (r"(\")[\x00-\x7F]*(\")")
    #BUSCA SI CONTIENE OPERANDO EN LA LIENA
    OPERAND= re.search(EsOperando, LineaAnalizada)
    INH = re.search(Inherente, LineaAnalizada)
    if OPERAND is None:
         return None   
    if OPERAND:
        Indice=LineaAnalizada.index(OPERAND.group())

    #HACE UNA BUSQUEDA PARA ENCONTRAR TODAS LAS COINCIDENCIAS     
    if Indice > 0:
        DIRECTOS = re.search( Directo, LineaAnalizada[Indice::])
        EXT = re.search(Extendido, LineaAnalizada[Indice::] )
        IDX5BITS=  re.search(Indexado5bits, LineaAnalizada[Indice::])
        IDX9BITS=  re.search(Indexado9bits, LineaAnalizada[Indice::])
        IDX16BITS=  re.search(Indexado16bits, LineaAnalizada[Indice::])
        IDXIND16BITS=  re.search(IndexadoIndirecto16bits, LineaAnalizada[Indice::])
        APPDI=  re.search(AutoPrePostDecrementoIncremento, LineaAnalizada[Indice::])
        IDXACUM= re.search(IndexadoAcum, LineaAnalizada[Indice::])
        IDXACUMIND=  re.search(IndexadoAcumIndirecto, LineaAnalizada[Indice::])
        REL8= re.search(Relativo8bits, LineaAnalizada[Indice::])
        REL16= re.search(Relativo16bits, LineaAnalizada[Indice::])
        IMM8= re.search(Inmediato8bits, LineaAnalizada[Indice::])
        IMM16= re.search(Inmediato16bits, LineaAnalizada[Indice::])
        FCC = re.search(DirectivaFCC, LineaAnalizada[Indice::])
        
        #IDENTIFICA A QUE TIPO PERTENECE EL OPERANDO Y DEVUELVE EL RESULTADO
        if DIRECTOS:
            resultado = DIRECTOS.group().replace("'", "")
            tipoDeOperando= "Directo, Dos bytes"
            return resultado, tipoDeOperando
            
        if EXT and rel != 'x':
            resultado = EXT.group().replace("'", "")
            tipoDeOperando="Extendido, Tres bytes"
            return resultado, tipoDeOperando
            
        if  IDX5BITS:
            resultado = IDX5BITS.group()
            tipoDeOperando= "Indexado de Cinco bits, (IDX), Dos bytes"
            return resultado, tipoDeOperando
            
        if  IDX9BITS:
            resultado = IDX9BITS.group()
            tipoDeOperando= "Indexado de Nueve bits, (IDX1), Tres bytes"
            return resultado, tipoDeOperando
            
        if  IDX16BITS:
            resultado = IDX16BITS.group()
            tipoDeOperando= "Indexado de Dieciseis bits, (IDX2), Cuatro bytes"
            return resultado, tipoDeOperando
            
        if IDXIND16BITS:
            resultado = IDXIND16BITS.group()
            tipoDeOperando= "Indexado Indirecto de Dieciseis bits, ([IDX2]), Cuatro bytes"
            return resultado, tipoDeOperando
            
        if  APPDI:
            resultado = APPDI.group()
            tipoDeOperando= "Auto Pre/Post Decremento/Incremento, (IDX), Dos bytes"
            return resultado, tipoDeOperando
            
        if  IDXACUM:
            resultado = IDXACUM.group()
            tipoDeOperando= "Indexado de acumulador, (IDX), Dos bytes"
            return resultado, tipoDeOperando
            
        if IDXACUMIND:
            resultado = IDXACUMIND.group()
            tipoDeOperando = "Indexado de acumulador indirecto, ([D,IDX]), Dos bytes"
            return resultado, tipoDeOperando
            
        if REL8 and rel == 'x':
            resultado = REL8.group().replace("'", "")
            tipoDeOperando= "Relativo de Ocho bits, (REL), Dos bytes"
            return resultado, tipoDeOperando
            
        if REL16 and rel == 'x':
            resultado = REL16.group().replace("'", "")
            tipoDeOperando= "Relativo de Dieciseis bits, (REL), Cuatro bytes"
            return resultado, tipoDeOperando

        if IMM8 and inm == 'y':
            resultado = IMM8.group().replace("'", "")
            tipoDeOperando= "Inmediato de Ocho bits, Dos bytes"
            return resultado, tipoDeOperando

        if IMM16 and inm == 'y':
            resultado = IMM16.group().replace("'", "")
            tipoDeOperando= "Inmediato de Dieciseis bits, Dos bytes"
            return resultado, tipoDeOperando

        if INH and inh == 'z':
           resultado= INH.group().replace("',","1")
           tipoDeOperando = "Inherente, Un byte" 
           return resultado, tipoDeOperando   

        if FCC:
            resultado= FCC.group()
            return resultado
        
#FUNCION QUE NOS PERMITE SABER QUE TIPO DE RELATIVO ES
def Relativo(DataFrame):

    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)] 

    valorDelRelativo=DataFrameFiltrado['Addr. Mode'].str.contains('REL').sum()

    if  valorDelRelativo > 0:
        return "x"

#FUNCION QUE NOS PERMITE SABER QUE TIPO DE INMEDIATO ES
def Inmediato(Dataframe):

    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)] 
    
    valorDelInmediato=DataFrameFiltrado['Addr. Mode'].str.contains('Inmediato').sum()
    
    if  valorDelInmediato > 0:
        return "y"        
#FUNCION QUE NOS PERMITE IDENTIFICAR UN MODO INHERENTE
def Inherente(Dataframe):

    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)] 
    
    inherente=DataFrameFiltrado['Addr. Mode'].str.contains('Inherente').sum()
    
    if  inherente > 0:
        return "z"     
        
    #Los CODOP del txt en el tabot y muestra la informacion
def buscar_enTabop(DataFrame, lista):
    
    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)]     #Busca el codop en el tabop 
    if DataFrameFiltrado.dropna().empty:
        print( Fore.RED +  "Error, el CODOP no tiene informacion" )
        init(autoreset=True) 
    else:
        print(  DataFrameFiltrado )         #Imprime la info del codop si este tiene
      

#Nos indica si un codop debe llevar operando o no
def llevaOperando(Dataframe, lista):
    contiene=False
    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)]     #Busca el codop en el tabop 
    
    if 'No Operando' in DataFrameFiltrado['Operando'].values:
        contiene=False
        return contiene
    if 'Operando' in DataFrameFiltrado['Operando'].values:
        contiene=True
        return contiene

#Devuelve el valor del ORG
def valorDelORG(t):
    LineaAnalizada= str(t)
    patronBuscarValor= r"ORG\s*(.{1,4})"
    lineaFil= re.search(patronBuscarValor, LineaAnalizada)
    if lineaFil is None:
         return None   
    if lineaFil:
        resultado= lineaFil.group()
        resultado1= resultado.split(" ", 1)
        return resultado1[1] 

#Escribe los datos en el archivo temporal
def escribirArchivoTemporal(CONTLOC,ETIQUETA,CODOP,result,VALOR_EQU):
    if codop.strip() != "EQU":
        archivoTmp.write("CONTLOC" +  "\t" + str(CONTLOC).strip() + "\t" + str(ETIQUETA).strip() + "\t" + str(CODOP).strip() +  "\t" +  str(result) + "\n")
    else:
        archivoTmp.write("VALOR EQU" + "\t" + str(VALOR_EQU).strip() + "\t" + str(ETIQUETA).strip() + "\t" + str(CODOP).strip() + "\t"+ str(result) + "\n")

#Analiza la directiva y devuelve el valor de bytes para aumentar al contloc
def analizaDirectiva(codop, result,operando):
    #Directivas de constantes
    pequeño=r"[\s][#]?([%][0-1]{1,8}|[$][0-9A-F]{1,2}|[@][0-3][0-7]?[0-7]?|\d|\d\d|1[0-9][0-9]|2[0-4][0-9]|2[5][0-5])(')"
    grande=r"[\s][#]?([%][0-1]{1,16}|[$][0-9A-F]{1,4}|[@][0-3][0-7]?[0-7]?[0-7]?[0-7]?[0-7]?|[@][0-1][0-7][0-7][0-7][0-7][0-7]|\d|\d\d|\d\d\d|\d\d\d\d|[0-5]\d\d\d\d[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])(')"
    regex = r"(Un|Dos|Tres|Cuatro)"

    PQ= re.search(pequeño, operando)
    GD= re.search(grande, operando)
    inherente= re.search(regex, operando) #Retora el valor de bytes de los operandos inhrentes

    if codop.strip()== "DB" and PQ or codop.strip()== "DC.B" and PQ or codop.strip()== "FCB" and PQ:
        return 1
       
    if codop.strip()== "DW" and GD or codop.strip()== "DC.W" and GD or codop.strip()== "FDB" and GD:
        return 2
        
    if codop.strip()== "FCC" and  operando != 'None':
        return len(operando)

    if codop.strip()== "DS" or codop.strip()== "DS.B" or codop.strip()== "RMB":
        return int(result)
    
    if codop.strip()== "DS.W" or codop.strip()== "RMW":
        return int(result)*2

    if (codop.strip()!= "DB" and codop.strip()!= "DC.B" and codop.strip()!= "FCB" and codop.strip()!= "DW" and codop.strip()!= "DC.W" and codop.strip()!= "FDB" 
    and codop.strip()!= "DS" and codop.strip()!= "DS.B" and codop.strip()!= "RMB" and codop.strip()!= "DS.W" and codop.strip()!= "RMW" and codop.strip()!= "FCC" and codop.strip()!= "EQU" and codop.strip()!= "ORG") and result != "":
        
        if inherente.group() == "Un":
            return 1
        if inherente.group() == "Dos":
            return 2
        if inherente.group() == "Tres":
            return 3
        if inherente.group() == "Cuatro":
            return 4    
    else:
        return 0
   
#Valida las condiciones necesarias de las directivas
def validarDirectivas(aumentocontloc, etiqueta, codop, result, operando):

    pequeño=r"[\s][#]?([%][0-1]{1,8}|[$][0-9A-F]{1,2}|[@][0-3][0-7]?[0-7]?|\d|\d\d|1[0-9][0-9]|2[0-4][0-9]|2[5][0-5])(')"
    grande=r"[\s][#]?([%][0-1]{1,16}|[$][0-9A-F]{1,4}|[@][0-3][0-7]?[0-7]?[0-7]?[0-7]?[0-7]?|[@][0-1][0-7][0-7][0-7][0-7][0-7]|\d|\d\d|\d\d\d|\d\d\d\d|[0-5]\d\d\d\d[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])(')"
    
    PQ= re.search(pequeño, operando)
    GD= re.search(grande, operando)
    
    if codop.strip() == "EQU" and etiqueta != "null" and etiqueta is not 'None' and GD:
        print('enviarlinea')
    elif codop.strip() == "EQU":
        print(Fore.RED + 'ERROR EQU TIENE QUE TENER UNA ETIQUETA Y UN OPERANDO')
    init(autoreset=True)    

    if aumentocontloc > 0 and PQ or aumentocontloc > 0 and GD:
        pass
        
    elif (codop.strip()== "DB" or codop.strip()== "DC.B" or codop.strip()== "FCB"  or codop.strip()== "DW" or codop.strip()== "DC.W" or codop.strip()== "FDB" 
    or codop.strip()== "DS" or codop.strip()== "DS.B" or codop.strip()== "RMB" or codop.strip()== "DS.W" or codop.strip()== "RMW"):
        print(Fore.RED + "Error el operando es inválido")
        init(autoreset=True) 
        
    if codop.strip() == "FCC" and operando is None:
        print(Fore.RED + "Error el operando es inválido")
    init(autoreset=True) 

#Obtiene el valor numerico del ORG
def limpiaORG(DIR_INIC):
    regexNum= r"[^0-9]"
    subst = ""
    result = re.sub(regexNum, subst, DIR_INIC, 0, re.MULTILINE)
    return int(result) 

#Escribe los datos en el archivo TABSIM
def escribeTABSIM(CONTLOC, ETIQUETA, VALOR_EQU, CODOP):
    if codop.strip() != "EQU":
        TABSIM.write("CONTLOC (ETIQUETA RELATIVA) " + "\t" + str(ETIQUETA) + "\t" + str(CONTLOC) + "\n")
    else :
        TABSIM.write("EQU (ETIQUETA ABSOLUTA) " + "\t" + str(ETIQUETA) + "\t" + str(VALOR_EQU) + "\n")


def codigoMaquinaInherente(valor, etiqueta, codop, operando, codigoMaquina):
    print(valor, etiqueta, codop, operando, codigoMaquina )

def codigoMaquinaDirecto(valor, etiqueta, codop, operando, codigoMaquina):
    
    #Binario
        if operando != '' and sistemaNumerico.strip()== "%":
            op= int(operando, 2)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(2)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        #Octal
        if operando != '' and sistemaNumerico.strip()== "@":
            op= int(operando, 8)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(2)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        #Hexadecimal
        if operando != '' and sistemaNumerico.strip()== "$":
            op= int(operando, 16)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(2)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        #Decimal
        dec=r'[0-9]'
        deci=re.search(dec, operando)
        if operando != '' and sistemaNumerico.strip() != '%' and sistemaNumerico.strip() != '$' and sistemaNumerico.strip() != '@' and deci:
            op= int(operando, 10)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(2)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass

def codigoMaquinaInmediato(valor, etiqueta, codop, operando, codigoMaquina, sistemaNumerico):
    #Binario
    if operando != '' and sistemaNumerico.strip()== "%":
        op= int(operando, 2)
        operandoHex= hex(op).replace("0x","").upper()
        operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(4)
        print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
    else:
        pass
    #Octal
    if operando != '' and sistemaNumerico.strip()== "@":
        op= int(operando, 8)
        operandoHex= hex(op).replace("0x","").upper()
        operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(4)
        print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
    else:
        pass

    if operando != '' and sistemaNumerico.strip()== "$":
        op= int(operando, 16)
        operandoHex= hex(op).replace("0x","").upper()
        operandoUnido= str(codigoMaquina)+str(operandoHex)
        print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
    else:
        pass


def codigoMaquinaExtendido(valor, etiqueta, codop, operando, codigoMaquina, sistemaNumerico, valorEtiquetaF):
        
        print(operando)
        #Binario
        if operando.strip() != '' and sistemaNumerico.strip()== "%":
            op= int(operando, 2)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(4)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        #Octal
        if operando.strip() != '' and sistemaNumerico.strip()== "@":
            op= int(operando, 8)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(4)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        if operando.strip() != '' and sistemaNumerico.strip()== "$":
            op= int(operando, 16)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex).zfill(4)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        if operando.strip() != '' and valorEtiquetaF == 0 and sistemaNumerico.strip().isdigit():
            op= int(operando, 10)
            operandoHex= hex(op).replace("0x","").upper()
            operandoUnido= str(codigoMaquina)+str(operandoHex)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'",""))
        else:
            pass
        if valorEtiquetaF != 0:
            operandoUnido= str(codigoMaquina) + str(valorEtiquetaF)
            print(valor, etiqueta, codop, operando, operandoUnido.replace("[","").replace("]","").replace("'","") )
        else: 
            pass

def valorCodigoMaquina(Dataframe, lista, modoDir):
    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)]     #Busca el codop en el tabop 
    
    valor= (DataFrameFiltrado['Código Máquina Calculado'].all()) and (DataFrameFiltrado["Addr. Mode"]== modoDir)
    valorCodigoMaquina= DataFrameFiltrado["Código Máquina Calculado"].loc[valor]
    return str(valorCodigoMaquina.values)

#Valida la exitencia de la eqtiqueta en el tabsim y devileve el valor si lo encuentra
def validarExistenciaEtiqueta( filename,operando):
    opi= operando.split(",")
    valorEtiqueta=opi[0].replace("(","").replace("'","")

    with open(filename, 'r') as read_obj:
        # Lee todas las lineas del archivo de una por una
        for line in read_obj:
            valor= line[-5]+ line[-4] + line[-3] +line[-2]+line[-1]
            if str(valorEtiqueta).strip() in line:
                return valor.strip()
    return False



############################################################# MAIN ##########################################################################     

#Importamos librerias y declaramos variables necesariasimport re
import sys
import re
import pandas as pd
from colorama import Back, Fore, Style, init

separador = "\n"
sepTabulador= chr(9)
sepEspacio= chr(32)

#Leemos el archivo excel y lo metemos en un dataframe
ruta_Archivo= "Tabop.xlsx"
datos= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
Dataframe= pd.DataFrame(datos)

#Lee el archivo, lo separa y lo mete en una lista linea por linea
with open('P2ASM.txt', 'r') as f:
   
    lineas = [linea.split(separador) for linea in f]

#Lista para guardar los CODOP
lista=[]
listaEtq= [] 
archivoTmp= open('P4tmp.txt','r+')
TABSIM= open('TABSIM.txt','r+')

#Obtiene el valor del ORG
for i in range(0, len(lineas)):
    DIR_INIC=valorDelORG(lineas[i])
    if DIR_INIC is not None:
        break

VALOR_EQU= 0000
CONTLOC= 0000
contlocHEX= 0

#For principal que ejecuta el programa
for i in range(0, len(lineas)):
    sin_Espacios=t_CODOP(lineas[i]).strip() #Quitamos los espacios al CODOP para comparar mas facil
    lista.append(sin_Espacios)              #Metemos en la lista
    t_COMENTARIO(lineas[i])
    #print("ETIQUETA= " + str(t_ETIQUETA(lineas[i])))
    print( "CODOP= " + t_CODOP(lineas[i]) ) 
    #buscar_enTabop(Dataframe,lista)
    rel=Relativo(Dataframe)
    inme=Inmediato(Dataframe)
    inh=Inherente(Dataframe)
    print("OPERANDO= " + str(t_OPERANDO(lineas[i], rel, inme,inh)))
    
    errllevaOp=0
    errNollevaOp=0

    #Identifica si debe lleva operando o no
    if llevaOperando(Dataframe , lista) and t_OPERANDO(lineas[i], rel , inme, inh) is None:
        errllevaOp=1
        print(Fore.RED + "Error, Debe llevar operando")
    init(autoreset=True)

    if llevaOperando(Dataframe , lista) is False and t_OPERANDO(lineas[i], rel, inme, inh).__contains__('1') is False and t_OPERANDO(lineas[i], rel, inme, inh).__contains__('Inherente, Un byte') is False:
        errNollevaOp=1
        print(Fore.RED + "Error, No debe llevar operando")
    init(autoreset=True)

    if llevaOperando(Dataframe , lista) is False and t_OPERANDO(lineas[i], rel, inme, inh).__contains__('1') and t_OPERANDO(lineas[i], rel, inme, inh).__contains__('Inherente, Un byte'):
        errNollevaOp=0

    #Variables con los valores base
    etiqueta= str(t_ETIQUETA(lineas[i])).strip()
    codop= str(t_CODOP(lineas[i])).strip()
    operando= str(t_OPERANDO(lineas[i], rel, inme,inh)).strip()

    #Mete las etiquetas en una lista para despues comparar con el TABSIM
    if t_ETIQUETA(lineas[i]) is not None:
        listaEtq.append(etiqueta)
    else:
        pass

    #Saca el numero limpio del operando
    regex= r"[^0-9]"    
    subst = ""
    operandoNumerico = re.sub(regex, subst, operando, 0, re.MULTILINE).strip()
    

    #Identifica el sistema numerico
    regex = r"(%|@|\$|[0-9])"
    filtrado= re.search(regex, operando, re.MULTILINE)
    if filtrado:
        sistemaNumerico= filtrado.group().strip()
            
  
    if str(t_OPERANDO(lineas[i],rel, inme,inh)).__contains__("Inherente"):
        modoDir= "Inherente"
    elif str(t_OPERANDO(lineas[i],rel, inme,inh)).__contains__("Directo"):
        modoDir= "Directo"
    elif str(t_OPERANDO(lineas[i],rel, inme,inh)).__contains__("Extendido"):
        modoDir= "Extendido"
    elif str(t_OPERANDO(lineas[i],rel, inme,inh)).__contains__("Inmediato"):
        modoDir= "Inmediato"      
        
    #
    #Pasa el valor del EQU a hexadecimal
    if operandoNumerico != "":
        auxEQU= int(operandoNumerico)
        VALOR_EQU= hex(auxEQU).lstrip('0x').zfill(4).upper()

    #Detecta el org y incia el contloc
    if codop.strip() == "ORG":
        CONTLOC= int(limpiaORG(DIR_INIC))
        archivoTmp.write("DIR_INIC" + "\t" + str(CONTLOC).zfill(4) + "\t" + str(etiqueta) + "\t" + str(codop) + "\t" + str(operandoNumerico) + "\n")    
    else:
        pass    
            
        #Escribe en el archivoTMP segun sea necesario
    if codop.strip() != "EQU" and codop.strip() != "ORG" and errllevaOp !=1 and errNollevaOp !=1:
        contlocHEX=hex(CONTLOC).lstrip('0x').zfill(4).upper()
        escribirArchivoTemporal(contlocHEX, etiqueta, codop, operandoNumerico, VALOR_EQU )
        aumentoCONTLOC=int(analizaDirectiva(codop, operandoNumerico,operando))   #Calcula el aumento del contloc
        CONTLOC= int(CONTLOC) + int(aumentoCONTLOC)
        validarDirectivas(aumentoCONTLOC, etiqueta, codop, operandoNumerico, operando)

    elif codop.strip() == "EQU":
        escribirArchivoTemporal(contlocHEX, etiqueta, codop, operandoNumerico, VALOR_EQU )    
    elif errllevaOp == 1:
        contlocHEX=hex(CONTLOC).lstrip('0x').zfill(4).upper()
        escribirArchivoTemporal(contlocHEX, etiqueta, codop, 0, VALOR_EQU )
        aumentoCONTLOC=0
        CONTLOC= int(CONTLOC) + int(aumentoCONTLOC)
    elif errNollevaOp == 1:
        contlocHEX=hex(CONTLOC).lstrip('0x').zfill(4).upper()
        escribirArchivoTemporal(contlocHEX, etiqueta, codop, 0, VALOR_EQU )
        aumentoCONTLOC=0
        CONTLOC= int(CONTLOC) + int(aumentoCONTLOC)

    #Escribe los datos necesarios al TABSIM
    if t_ETIQUETA(lineas[i]) is not None:
            escribeTABSIM(contlocHEX, etiqueta, VALOR_EQU, codop)
    else:
        pass     

    #Obtiene el valor del codigo maquina y muestra la informacion
    if codop.strip() != "EQU" and modoDir== "Inherente":
        valorCM= valorCodigoMaquina(Dataframe, lista, modoDir)
        valor= 0
        codigoMaquinaInherente(contlocHEX, etiqueta, codop, operandoNumerico, valorCM)
    else:
        pass
            
    if codop.strip() != "EQU" and modoDir == "Directo": 
        valorCM= valorCodigoMaquina(Dataframe, lista, modoDir)
        valor= 0   
        codigoMaquinaDirecto(contlocHEX, etiqueta, codop,  operandoNumerico, valorCM  )
    else:
        pass

    if codop.strip() != "EQU" and modoDir == "Inmediato": 
        valorCM= valorCodigoMaquina(Dataframe, lista, modoDir)
        valor= 0   
        codigoMaquinaInmediato(contlocHEX, etiqueta, codop,  operandoNumerico, valorCM , sistemaNumerico )
    else:
        pass  
    
    
    if codop.strip() != "EQU" and modoDir == "Extendido": 
        valorCM= valorCodigoMaquina(Dataframe, lista, modoDir)   
        filename= "TABSIM.txt"
        valorEtiquetaF=validarExistenciaEtiqueta(filename, operando)
        if validarExistenciaEtiqueta(filename,operando):
            codigoMaquinaExtendido(contlocHEX, etiqueta, codop, operandoNumerico, valorCM, sistemaNumerico, valorEtiquetaF)        
        elif sistemaNumerico.strip() == '%' or sistemaNumerico.strip() == '$' or sistemaNumerico.strip() == '@' or sistemaNumerico.isdigit():
            print(sistemaNumerico)
            codigoMaquinaExtendido(contlocHEX, etiqueta, codop,  operandoNumerico, valorCM , sistemaNumerico, valorEtiquetaF )
        else:
            print("La etiqueta no se encuentra en el TABSIM, Error")   
    else:
        pass

 
    lista=[None]                          #Vaciamos la lista para mayor limpieza
    print(" \n ")  
 

for linea in lineas:
    print(linea)