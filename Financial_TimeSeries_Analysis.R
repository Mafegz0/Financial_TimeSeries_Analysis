#### Ejercicio Analítica Financiera: Tipos de Datos
library(dygraphs)
library(xts)
library(quantmod)
library(dplyr)
options(warn = - 1)  
######################################################
###Primero, generemos una función que ayude a simplificar los tipos de datos que deseamos de la fuente de 
#información financiera.
#En este ejemplo, los datos de Cierre y Volúmenes, que dependerán del simbolo o ticker 
#del activo y a partir de qué año se consultan:
##Datos:
start<-format(as.Date("2015-01-01"),"%Y-%m-%d")
end<-format(as.Date("2020-07-01"),"%Y-%m-%d")

precios_volumenes <- function(simbolo)
{
  # Obtener precios stocks de Yahoo Finance
  datos <- getSymbols(simbolo, auto.assign = FALSE, from=start, to=end)
  # Eliminando valores faltantes
  datos <- na.omit(datos)
  # Mantenemos columnas con Precios de Cierre y Volúmenes, columnas 5 y 6 de cada stock:
  datos <- datos[, 5:6]
  # Para hacer los datos accesibles, asignamos a Global Environment:
  assign(simbolo, datos, envir = .GlobalEnv)
}

# Llamamos la función para cada stock desde el 2015:
precios_volumenes("IBM")
precios_volumenes("ORCL")
precios_volumenes("INTC")
precios_volumenes("MSFT")

#Confirmamos la columnas de  volúmenes tranzados y precios ajustados 
colnames(IBM)

# Juntamos los datos y renombramos las columnas:
PyV <- merge.xts(IBM, ORCL, INTC, MSFT)
colnames(PyV) <- c("IBM Vol", "IBM P.Ajustado",
                   "ORCL Vol", "ORCL P.Ajustado",
                   "INTC Vol", "INTC P.Ajustado",
                   "MSFT Vol", "MSFT P.Ajustado")

##Serie De Tiempo:
# Podemos generar una gráfica interactiva las variables, en este caso de los precios:
Precios<-  dygraph(PyV[,c(2,4,6,8)], main = "Precios ajustados de IBM, ORACLE, Intel y Microsoft") %>%
  dyAxis("y", label = "Precios") %>%
  dyRangeSelector(dateWindow = c("2015-01-01", "2020-12-31")) %>%
  dyOptions(colors = RColorBrewer::brewer.pal(4, "Set1")) 
Precios

# Podemos ver los 5 ultimos datos redondeando hasta 3 decimales:
round(tail(PyV, n = 5), 3)

#########################################################################################################
# Ejemplo de Panel Data, generemos una list de objetos dygraphs, y para imprimirlos usamos htmltools:
library(dygraphs)
library(htmltools)
dy_graficos <- list(
  dygraphs::dygraph(PyV[,c(1,3,5,7)], main = "Volumenes de IBM, ORACLE, Intel y Microsoft"), 
  dygraphs::dygraph(PyV[,c(2,4,6,8)], main = "Precios ajustados de IBM, ORACLE, Intel y Microsoft"))


# Representemos los objetos dygraphs usando htmltools
htmltools::browsable(htmltools::tagList(dy_graficos))


#-------------------------------------------------------------------
#-------Datos tipo Transversales o Cross Sectional
# Seleccionaremos los datos de Microsoft del 2015 y del 2020. 
# Empecemos seleccionando los anios 2015 de MSFT que es la 8va columna.

MSFT_2015 <- subset(PyV[,8], index(PyV) >= "2015-01-01" & index(PyV) <= "2015-12-31")
MSFT_2015[c(1:5, nrow(MSFT_2015))]
#2016
MSFT_2016 <- subset(PyV[,8], index(PyV) >= "2016-01-01" & index(PyV) <= "2016-12-31")
MSFT_2016[c(1:5, nrow(MSFT_2016))]
#2017
MSFT_2017 <- subset(PyV[,8], index(PyV) >= "2017-01-01" & index(PyV) <= "2017-12-31")
MSFT_2017[c(1:5, nrow(MSFT_2017))]
#2018
MSFT_2018 <- subset(PyV[,8], index(PyV) >= "2018-01-01" & index(PyV) <= "2018-12-31")
MSFT_2018[c(1:5, nrow(MSFT_2018))]
#2019
MSFT_2019 <- subset(PyV[,8], index(PyV) >= "2019-01-01" & index(PyV) <= "2019-12-31")
MSFT_2019[c(1:5, nrow(MSFT_2019))]
#2020:
MSFT_2020 <- subset(PyV[,8], index(PyV) >= "2020-01-01" & index(PyV) <= "2020-12-31")
MSFT_2020[c(1:5, nrow(MSFT_2020))]

# Ahora, podemos tambien visualizarlo, elegimos un histograma  
par(mfrow=c(2,1))

hist(MSFT_2015, freq = FALSE, col="yellow", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2015", xlab = "Precios Ajustados")
lines(density(MSFT_2015), lwd = 2, col = 'red')
hist(MSFT_2016, freq = FALSE, col="lightblue", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2016", xlab = "Precios Ajustados")
lines(density(MSFT_2016), lwd = 2, col = 'red')
hist(MSFT_2017, freq = FALSE, col="green", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2017", xlab = "Precios Ajustados")
lines(density(MSFT_2017), lwd = 2, col = 'red')
hist(MSFT_2018, freq = FALSE, col="orange", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2018", xlab = "Precios Ajustados")
lines(density(MSFT_2018), lwd = 2, col = 'red')
hist(MSFT_2019, freq = FALSE, col="pink", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2019", xlab = "Precios Ajustados")
lines(density(MSFT_2019), lwd = 2, col = 'red')
hist(MSFT_2020, freq = FALSE, col="purple", border="blue",main= "Densidades de los Precios Ajustados MSFT en 2020", xlab = "Precios Ajustados")
lines(density(MSFT_2020), lwd = 2, col = 'red')
