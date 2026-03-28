# Financial Time Series Analysis in R
Live Demo  
https://mafegz0.github.io/Financial_TimeSeries_Analysis/

## Descripción

Este proyecto implementa un análisis de series de tiempo financieras utilizando R y datos históricos obtenidos desde Yahoo Finance. Se analizan precios ajustados y volúmenes de negociación de IBM, Oracle, Intel y Microsoft.

El análisis incluye:

* Descarga de datos financieros
* Series de tiempo interactivas
* Panel de datos financieros
* Histogramas por año
* Análisis de distribución de precios

---

## Activos Analizados

* IBM (IBM)
* Oracle (ORCL)
* Intel (INTC)
* Microsoft (MSFT)

---

## Periodo Analizado

2015 — 2020

---

## Librerías Utilizadas

* quantmod
* xts
* dygraphs
* dplyr
* htmltools
* htmlwidgets

---

## Estructura del Proyecto

```
Financial-TimeSeries-Analysis-R
│
├── Financial_TimeSeries_Analysis.R
├── Precios_ajustados.html
├── Volumen_Precios.html
├── MSFT2015-2016.pdf
├── MSFT2017-2018.pdf
├── MSFT2019-2020.pdf
└── README.md
```

---

## Visualizaciones Interactivas

### Precios Ajustados

Archivo:

```
Precios_ajustados.html
```

Contiene:

* Serie de tiempo interactiva
* Zoom dinámico
* Comparación entre activos
* Selector de fechas

Activos incluidos:

* IBM
* Oracle
* Intel
* Microsoft

---

### Panel Volumen y Precios

Archivo:

```
Volumen_Precios.html
```

Incluye:

* Volumen de negociación
* Precios ajustados
* Comparación temporal
* Visualización interactiva

---

### Histogramas Microsoft

Se generaron histogramas de precios ajustados de Microsoft para cada año:

* MSFT2015-2016.pdf
* MSFT2017-2018.pdf
* MSFT2019-2020.pdf

Estos histogramas permiten analizar:

* Distribución de precios
* Volatilidad
* Tendencias de crecimiento
* Cambios en dispersión

