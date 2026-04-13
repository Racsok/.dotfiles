# Comandos aprendidos para NVIM

## comados de editor
i -> Modo insertar en la posicion del cursor
I -> Modo insertar al inicio de la linea
n -> Normal
v -> Modo Visual
Esc -> Volver al modo Normal
e -> abre un archivo que quieras editar :e archivo.txt
. -> repite el ultimo comando realizado

## Modo Normal
% -> Salta al cierre o apertura del parentesis o corchete
 
<!-- con #+key recorres la cantidad de lineas o letras que indicas -->
### Navegación
h -> izquierda 
j -> Abajo
k -> Arriba
l -> Derecha

### Navegación por palabras
w -> Siguiente palabra (los simbolos cuentan como palabras)
W -> Siguiente palabra
b -> Regresar Palabra a palabra anterior
e -> Salta al final de una palabra (Los simbolos cuentan como otra palabra)
E -> Salta al final de una palabra

### Navegación por lineas
0 -> Incio de la linea
$ -> final de la linea
& -> Primer caracter de la linea

### Navegación por busqueda
f+[caracter] -> En la misma linea busca por caracter colocado hacia adelante
F+[caracter] -> En la misma linea busca por caracter colocado hacia atras
; -> Repite la ultima busqueda realizada
, -> Repite la ultima busqueda realizada hacia atras

### Navegación por el documento
{ -> Sube parrafo a parrafo
} -> Baja parrafo a parrafo
gg -> Al inicio del documento
G -> Al final del documento
:# -> Salta a la linea colocada
H -> Mueve el cursor a la priemra linea visible en el editor
L -> Mueve el cursor a la ultima linea visible en el editor
M -> Mueve el cursor a la linea del medio visible en el editor
C-f -> Hace un salto de vista visible en el editor hacia abajo
C-b -> Hace un salto de vista visible en el editor hacia arriba
z+Enter -> Coloca la linea actual al inicio de vista visible del editor
zz -> Coloca la linea actual en medio de la vista visble del editor

### MarcadoresF
<!-- si el caracter esta en mayuscula (mA, 'A) crea un marca global entre archivos -->
m+[caracter] -> Crea una marca en la linea en la posicion del cursor en el archivo local
'+[caracter] -> Posiciona el cursor en la marca dejada
:marks -> muetra todas las marcas creadas
:delm+[caracter] -> elimina la marca Seleccionada

## Modo insertar (manipulacion de texto)
<!--No se hace en el modo insertar, sino que accede al modo insertar o manipula texto-->
### Ingresar al modo insertar
a -> Entra al modo insertar para agregar contenido
A -> Entra al modo insertar para agregar contenido al final de la linea
o -> Entra a modo insertar con un salto de linea
O -> Entra a modo insertar con un salto de linea hacia arriba

### Copiar, cortar y pegar
<!--y y d tienen buffer, y0, d0, -->
x -> Corta el caracter bajo el cursor
y -> Copia lo que esta seleccionado
yy -> Copia toda la linea actual incluyendo el salto de linea
d -> Corta lo que esta seleccionado 
D -> Corta desde la posicion del cursor hasta el final de la linea
dd -> Corta toda la linea actual incluyendo el salto de linea
d^ -> Corta desde el cursor hasta la primera palabra de la linea actual
dw -> Corta una palabra desde la posicion del cursor
db -> Corta una palabra desde la posicion del cursor hacia atras
df+[caracter] -> Corta desde el cursor hasta el caracter buscado
p -> Pega lo ultimo que copiado o cortado

### Objetos de texto
con agregar la letra i a ciertos atajos infiere a bloque de texto entero bajo el cursor sin importar la posicion del cursor
diw -> Corta la palabra completa en la que esta posicionado el cursor
ciw -> Corta la palabra completa en la que esta posicionado el cursor y abre el modo insertar
di( -> Corta todo lo que este entre parentesis 
da( -> Corta todo lo que este enntre parentesis y los parentesis

### Deshacer y Reahacer 
u -> Deshace la ultima acción realizada el famoso ctrl+z
C-r -> Reahace lo que hizo el comando u 

### Otros
~ -> Intercamba entre mayúsculas y minúsculas
guiw -> Cambia a minúsculas la palabra sobre la que esta el cursor
gUiw -> Cambia a mayúsculas la palabra sobre la que esta el cursor
<< -> Desplaza un TAB a la izquierda
>> -> Desplaza un TAB a la derecha 
== -> Indenta la linea actual
=G -> Identa hasta el final del doc (gg=G identa todo el documento)

### Cambiar y Remplazar
<!--c tienen buffer, c0 -->
c -> Cambia la palabra seleccionada <!-- Tambien funciona como un cortar-->
c^ -> Cambia desde el cursor hasta la primera palabra de la linea actual
cw -> Cambia una palabra desde la posicion del cursor
cb -> Cambia una palabra desde la posicion del cursor hacia atras
r -> Remplaza el caracter bajo el cursor o seleccionado por el un caracter
s -> Hace lo mismo que el atajo x pero abre el modo insertar


:rango s/patron/reemplazo/[cgil] -> comando para Buscar y Remplazar
<!-- Respecto al rango, puede ser alguno de los que indico a continuación, una combinación o ninguno de ellos. Quiero decir con esto que el rango es totalmente opcional, siempre puedes omitirlo

"numero" se refiere a la búsqueda y reemplazo en una línea concreta
"inicio",fin de la línea inicio a la línea fin
. para la línea actual
$ se refiere a la última línea del archivo
% se refiere a todo el archivo

:5,10s/casa/caso/g reemplaza casa por caso entre las líneas 5 y 10 del documento.
:%s/casa/caso/g se comporta igual que el caso anterior, pero lo hace en todo el documento.

Por otro lado, respecto a las opciones cgil que aparecen en la sintaxis indicadas anteriormente,
c te obliga a confirmara cada una de las sustituciones.
g reemplaza todas las ocurrencias de la línea. Si no se añade esta opción solo cambiará la primera de las apariciones en la línea.
i no distingue entre mayúsculas y minúsculas.
l diferencia entre mayúsculas y minúsculas.-->

## Modo Visual o Busquedas en el documento
V -> Modo Visual Line
V -> Modo Visual Line
h -> Selecciona izquierda
j -> Selecciona Abajo
k -> Selecciona Arriba
l -> Selecciona Derecha
o -> Intercambia el cursor entre los extremos de la selección
gv -> Vulve a seleccionar la ultima selección echa

### Escribir en varias lineas a la vez
C-q -> Activa el modo bloque
I -> Entra al modo Insertar normal para Escribir en todos los bloques seleccionados
A -> Entra al modo Insertar agregar para Escribir en todos los bloques seleccionados
c -> Entra al modo Insertar para Cambiar la palabra en todos los bloques seleccionados

### Busqueda en el documento
/[caracteres] -> busca las concidencias en todo el documento
n -> Salta a la siguiente ocurrencia
N -> Salta a la anterior ocurrencia
:noh -> Comando para no resaltados
\* -> Busca hacia adelante la palabra bajo el cursor 
\# -> Busca hacia atras la palabra bajo el cursor 



