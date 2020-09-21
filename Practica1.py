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
            print("Comentario ")
        
   

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
            print("CODOP= "+ CoincideCODOP.group())
        else:
            print("CODOP= Error, longitud invalida")
        if CoincideCODOP.group().__contains__("End") or CoincideCODOP.group().__contains__("end") or CoincideCODOP.group().__contains__("END"):#Si la coincidencia contiene End:
            sys.exit() #Finaliza el programa 
    else:
        print("CODOP= null") #Si no encuentra un CODOP regresa null

def t_OPERANDO(t):      #Funcion que identifica Operandos

    LineaAnalizada= str(t)

    #Busca un $,% o @ y si encuentra devuelve el operando correspondiente
    Identificador_Porcentaje= LineaAnalizada.find("%") 
    if Identificador_Porcentaje != -1:
        print("OPERANDO: " + LineaAnalizada[Identificador_Porcentaje::].replace("]"," ").replace("'"," ").replace(",", " ")) 
   
    Identificador_Arroba= LineaAnalizada.find("@")
    if Identificador_Arroba != -1:
        print("OPERANDO: " + LineaAnalizada[Identificador_Arroba::].replace("]"," ").replace("'"," ").replace(",", " ")) 

    Identificador_Dinero= LineaAnalizada.find("$") 
    if Identificador_Dinero != -1:
        print("OPERANDO: " + LineaAnalizada[Identificador_Dinero::].replace("]"," ").replace("'"," ").replace(",", " "))
  
    if Identificador_Arroba== -1 and Identificador_Dinero== -1 and Identificador_Porcentaje==-1:
     print("OPERANDO: null")


#Importamos librerias y declaramos variables necesarias
import re
import sys
separador = "\n"
sepTabulador= chr(9)
sepEspacio= chr(32)

#Lee el archivo, lo separa y lo mete en una lista linea por linea
with open('P1ASM.txt', 'r') as f:
   
    lineas = [linea.split(separador) for linea in f]
    

  

#Lee el archivo y lo analiza y muestra los resultados
for i in range(0, len(lineas)):
    t_COMENTARIO(lineas[i])
    t_ETIQUETA(lineas[i])
    t_CODOP(lineas[i])
    t_OPERANDO(lineas[i])
    print(" \n ")