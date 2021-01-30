# Introducción a R

## Vectores atòmicos

# Como creamos un vector?

x <- c(1, 5, 4, 7, 10, 8)
x + 2

## Todos los elementos de un vector atómico deben ser del mismo tipo.

# logico 
x1 = c(TRUE, FALSE, TRUE, TRUE, TRUE)
typeof(x1)

# entero
x2 = c(1L, 3L, 2L, 6L, 8L, 7L)
typeof(x2)

# numerico (double)
x3 = c(1, 3, 2, 6, 8, 7)
typeof(x3)

# caracter
x4 = c('1', '2', 'patata', '')
typeof(x4)

# Cuando combinamos distintos tipos al crear un vector atomico. R lo convertirá al tipo más generico.
x5 = c(TRUE, 1L, 'patata')
typeof(x5)

# Por defecto NA es logico
typeof(NA)

# Si lo ponemos en un vector atomico de un tipo más generico se adaptara al tipo
x6 = c(NA, 3, TRUE)
typeof(x6)
x6

length(x6)

# Si tenemos un vector de logicos
as.numeric(x1)
as.character(x1)
as.character(as.numeric(x1))

x7 = c("3", "6", "4.3", "5")
typeof(x7)
as.numeric(x7)

x7[1]
x7[2]
x7[3]
x7[4]
x7[10]

## Las listas
l1 <-list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
l1

l2 = list(l1, 10:1)
l2

length(l1)
length(l2)

l1[1]
l1[2]

l1[[1]]
# 1:3 es una manera ágil de generar el vector c(1,2,3)

is.list(cars)

## Funciones de R

# Vamos a crear una función que eleve al cuadrado un elemento
cuadrado <- function(x){
  x^2     # Equivalente, x * x
}
cuadrado_en_una_linea = function(x) x^2

cuadrado(2)
cuadrado_en_una_linea(3)
cuadrado(1:100)
cuadrado('patata')

g = function(f) f(1:10)

g(cuadrado)

## Operadores logicos
x =c(-1.75,-1.25,1.25,1.75)
x
x > 0
y = c('a','b','c','a','b','a')
y == 'a'

# R reutilitza valores
y == c('a', 'b')
# es equivalente a y == c('a', 'b', 'a', 'b', 'a', 'b')

y != 'a'

c('a', 'b', 'c', 'f') %in% y



# Subselección
set.seed(1)
x = paste(sample(letters),seq_along(letters), sep =':')
x

# Valores enteros positivos podemos seleccionar elementos
x[c(8,10,12)]
x[c(8,8,10,12)]
x[1:26]
x[26:1]  # equivalente rev(x)

# Valores enteros negativos podemos seleccionar elementos
## No quedamos con todos excepto los valores que pasamos
x[-1]
x[-c(1,3,5,4)]
x[length(x)] # acceso al último elemento

# Valores logícos
y = -3:3
y[c(T, T, F, F, T, T, F)]
y[y > 0]
y[y %% 2 == 0] # pares

yn = y
names(yn) = c('menos tres', 'menos 2', 'menos 1', 'zero', 'uno', 'dos', 'tres')
yn
yn[c('uno', 'dos', 'zero')]

# paste(c("A", 'B'), "b", sep = ':')

lx = list(1,"2",3,"Cuatro",5)
lx[c(1,3,2)]

nlx = lx
names(nlx) = c('uno', 'dos', 'tres', 'cuatro', 'cinco')
nlx
nlx[c('uno', 'tres', 'cinco')]
