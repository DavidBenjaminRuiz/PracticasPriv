from pandas.io.formats.style import no_mpl_message


ETIQUETA: " "                                                           
CODOP: " "
OPERANDO: " "

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
    patronIndexadoAcumIndirecto= r"\[([dD])(,)(PC|Y|X|SP)\]"
    patronIndexadoAcum= r"(A|B|D)(,)(X|Y|SP|PC)"
    patronAutoPrePostDecrementoIncremento= r"[1-8](,)[+|-]?(X|Y|SP)[+|-]?"
    patronRelativo8_16 = r" ([a-zA-Z]?[a-z|_|0-9]*){1,8}"
     
   
     
    match= re.search(patronIndexadoAcum, LineaAnalizada, re.MULTILINE | re.IGNORECASE)
    if match is None:
        return None
    OPERANDO= match.group()
    if OPERANDO is not None:
        print("OPERANDO= " + OPERANDO)
        

    match= re.search(patronRelativo8_16, LineaAnalizada, re.MULTILINE | re.IGNORECASE)
    if match is None:
        return None
    OPERANDO= match.group()
    if OPERANDO is not None:
        print("OPERANDO= " + OPERANDO)
            

    match= re.search(patronIndexadoAcumIndirecto, LineaAnalizada, re.MULTILINE | re.IGNORECASE)
    if match is None:
        return None
    OPERANDO= match.group()
    if OPERANDO is not None:
        print("OPERANDO= " + OPERANDO)
              


  
    
        
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



def analizadorOperando(OPERANDO):
    patronIndexadoAcumIndirecto= r"\[([dD])(,)(PC|Y|X|SP)\]"
    patronIndexadoAcum= r"(A|B|D)(,)(X|Y|SP|PC)"
    patronAutoPrePostDecrementoIncremento= r"[1-8](,)[+|-]?(X|Y|SP)[+|-]?"
    patronIndirecto16bits= r"\[([0-6]?[0-5]?[0-5]?[0-9]?[0-9])?(,)(X|Y|SP)\]"
    patronIndexado5bits= r"?i)^([-]\d?|[-]1[0-5]?|\d?|1[0-6]?)([,])(X|Y|SP|PC)$"


    match= re.search(patronIndexadoAcumIndirecto, OPERANDO, re.MULTILINE | re.IGNORECASE)
    if match is None:
            return None
    resultado= match.group()
    return resultado







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
    print(Fore.YELLOW + "CODOP= " + t_CODOP(lineas[i]) ) 
    #buscar_enTabop(Dataframe,lista)
    print(" ")
    
    t_OPERANDO(lineas[i])
    #if llevaOperando(Dataframe , lista) and t_OPERANDO(lineas[i])== "null" :
    #    print("Error, Debe llevar operando")

    #if llevaOperando(Dataframe , lista) is False and t_OPERANDO(lineas[i]) != "null" :
     #   print("Error, No debe llevar operando")

    

    lista=[None]                           #Vaciamos la lista para mayor limpieza
    print(" \n ")



for linea in lineas:
    print(linea)