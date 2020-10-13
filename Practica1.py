ETIQUETA: None                                                         
CODOP: None
OPERANDO: None

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
            print("ETIQUETA = "+ ETIQUETA.group())
             
        else:
            print("ETIQUETA = Error, longitud invalida")
              
    else:
        print("ETIQUETA= null")
                 

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
            
       # if CoincideCODOP.group().__contains__("End") or CoincideCODOP.group().__contains__("end") or CoincideCODOP.group().__contains__("END"):#Si la coincidencia contiene End:
           # sys.exit() #Finaliza el programa 
    else:
        print("CODOP= null") #Si no encuentra un CODOP regresa null

    return resultado

def t_OPERANDO(t):
    
    LineaAnalizada= str(t)
    
    EsOperando= r'[\s]([@]|[%]|[$]|[0-9]|[,]|[-]|[[]|A|B|D|[\w_])'
    Directo=re.compile(r"[\s]([%][0-1]{1,8}|[$][0-9A-F]{1,2}|[@][0-3][0-7]?[0-7]?|\d|\d\d|1[0-9][0-9]|2[0-4][0-9]|2[5][0-5])(')")
    Extendido=(r"[\s]([[%][0-1]{9,16}|[$][0]*[1-9A-F]{3,4}|[@][4][0-7][0-7]|[@][0-7][0-7][0-7][0-7][0-7]|[@][0-1][0-7][0-7][0-7][0-7][0-7]|2[5][6-9]|2[6-9]\d|[3-9]\d\d|[0-9]\d\d\d|[0-5]\d\d\d\d|[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5]|[\w_]+)(')")
    Indexado5bits=(r'([-]\d?|[-]1[0-5]?|[\s]\d?|1[0-6]?)([,])(?i)(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    Indexado9bits=(r'(?i)([-]1[7-9]|[-][2-9]\d|[-]1[0-9]\d|[-]2[0-4][0-9]|[-]2[0-5][0-6]|[\s]1[6-9]|[\s][2-9]\d|[\s]2[0-4][0-9]|[\s]2[0-5][0-5])([,])(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    Indexado16bits=(r'(?i)(2[5][6-9]|[3-9]\d\d|[0-9]\d\d\d|[0-5]\d\d\d\d|[0-6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])([,])(X(?![+-])(?![]])|Y(?![+-])(?![]])|SP(?![+-])(?![]])|PC(?![+-])(?![]]))')
    IndexadoIndirecto16bits=(r"\[(\d\d?\d?\d?|[0-5][0-9][0-9][0-9][0-9]|[6][0-4][0-9][0-9][0-9]|[0-6][0-5][0-5][0-3][0-5])(,)(?i)(PC|Y|X|SP)\]")
    AutoPrePostDecrementoIncremento=(r"[\s][1-8](,)(?i)([+|-](X|Y|SP)|(X|Y|SP)[+|-])")
    IndexadoAcum= (r"(A|B|D)(,)(?i)(X(?![]])|Y(?![]])|SP(?![]])|PC(?![]]))")##No jalo
    IndexadoAcumIndirecto=(r"\[(?i)([D])(,)(?i)(PC|Y|X|SP)\]")
    
    OPERAND= re.search(EsOperando, LineaAnalizada)
    if OPERAND is None:
         return None       
    if OPERAND:
        Indice=LineaAnalizada.index(OPERAND.group())
    if Indice > 0:
        DIRECTOS = re.search(Directo, LineaAnalizada[Indice::], re.MULTILINE)
        EXT = re.search(Extendido, LineaAnalizada[Indice::], re.MULTILINE)
        IDX5BITS=  re.search(Indexado5bits, LineaAnalizada[Indice::], re.MULTILINE)
        IDX9BITS=  re.search(Indexado9bits, LineaAnalizada[Indice::], re.MULTILINE)
        IDX16BITS=  re.search(Indexado16bits, LineaAnalizada[Indice::], re.MULTILINE)
        IDXIND16BITS=  re.search(IndexadoIndirecto16bits, LineaAnalizada[Indice::], re.MULTILINE)
        APPDI=  re.search(AutoPrePostDecrementoIncremento, LineaAnalizada[Indice::], re.MULTILINE)
        IDXACUM= re.search(IndexadoAcum, LineaAnalizada[Indice::], re.MULTILINE)
        IDXACUMIND=  re.search(IndexadoAcumIndirecto, LineaAnalizada[Indice::], re.MULTILINE})
        if DIRECTOS:
            resultado = DIRECTOS.group().replace("'", "")
            return resultado, "Directo, 2 bytes"
        if EXT:
            resultado = EXT.group().replace("'", "")
            return resultado, "Extendido,  3 bytes"
        if  IDX5BITS:
            resultado = IDX5BITS.group()
            return resultado, "Indexado 5 bits, (IDX), 2 bytes"
        if  IDX9BITS:
            resultado = IDX9BITS.group()
            return resultado, "Indexado 9 bits, (IDX1), 3 bytes"
        if  IDX16BITS:
            resultado = IDX16BITS.group()
            return resultado, "Indexado 16 bits, (IDX2), 4 bytes"

        if IDXIND16BITS:
            resultado = IDXIND16BITS.group()
            return resultado, "Indexado Indirecto 16 bits, ([IDX2]), 4 bytes"
        if  APPDI:
            resultado = APPDI.group()
            return resultado, "AutoPrePostDecrementoIncremento, (IDX), 2 bytes"
        if  IDXACUM:
            resultado = IDXACUM.group()
            return resultado, "Indexado de acumulador, (IDX), 2 bytes "
        if IDXACUMIND:
            resultado = IDXACUMIND.group()
            return resultado, "Indexado de acumulador indirecto, ([D,IDX]), 2 bytes"

        if OPERAND:
           resultado= "Inherente 1 byte" 
           return resultado 
        
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
      


def llevaOperando(Dataframe, lista):
    xh=False
    datos_Tabop= pd.read_excel(ruta_Archivo, sheet_name="Hoja1", header=3)
    DataFrame= pd.DataFrame(datos_Tabop)
    DataFrameFiltrado=DataFrame[DataFrame['CODOP'].isin(lista)]     #Busca el codop en el tabop 
    
    if 'No Operando' in DataFrameFiltrado['Operando'].values:
        xh=False
        return xh
    if 'Operando' in DataFrameFiltrado['Operando'].values:
        xh=True
        return xh



#Importamos librerias y declaramos variables necesarias
import re
import sys
import pandas as pd
from colorama import init, Fore, Back, Style
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
#Lee el archivo y lo analiza y muestra los resultados
for i in range(0, len(lineas)):
    sin_Espacios=t_CODOP(lineas[i]).strip() #Quitamos los espacios al CODOP para comparar mas facil
    lista.append(sin_Espacios)              #Metemos en la lista
    t_COMENTARIO(lineas[i])
    t_ETIQUETA(lineas[i])
    print( "CODOP= " + t_CODOP(lineas[i]) ) 
    #buscar_enTabop(Dataframe,lista)
    print("OPERANDO= " + str(t_OPERANDO(lineas[i])))
    #print(llevaOperando(Dataframe, lista))
    if llevaOperando(Dataframe , lista) and t_OPERANDO(lineas[i]) is None :
        print(Fore.RED+ "Error, Debe llevar operando")
        init(autoreset=True)

    if llevaOperando(Dataframe , lista) is False and t_OPERANDO(lineas[i]) is not None :
        print(Fore.RED+ "Error, No debe llevar operando")
        init(autoreset=True)

    
    lista=[None]                           #Vaciamos la lista para mayor limpieza
    print(" \n ")

for linea in lineas:
    print(linea)
