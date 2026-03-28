# Financial Time Series Analysis in R
Live Demo 
https://mafegz0.github.io/Financial_TimeSeries_Analysis/
[![View Project](https://img.shields.io/badge/View-Project-blue)](https://mafegz0.github.io/Financial_TimeSeries_Analysis/)

## Description

This project implements a financial time series analysis using R and historical data obtained from Yahoo Finance. Adjusted prices and trading volumes for IBM, Oracle, Intel, and Microsoft are analyzed.

The analysis includes:

* Financial data extraction
* Interactive time series visualization
* Financial data dashboards
* Yearly histograms
* Price distribution analysis

---

## Assets Analyzed

* IBM (IBM)
* Oracle (ORCL)
* Intel (INTC)
* Microsoft (MSFT)

---

## Analyzed Period

2015 — 2020

---

## Libraries Used

* quantmod
* xts
* dygraphs
* dplyr
* htmltools
* htmlwidgets

---

## Project Structure

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

## Interactive Visualizations

### Adjusted Prices

File:

```
Precios_ajustados.html
```
This visualization includes:

* Interactive time series
* Dynamic zoom
* Asset comparison
* Date range selector

Assets included:

* IBM
* Oracle
* Intel
* Microsoft

---

### Volume and Price Dashboard

File:

```
Volumen_Precios.html
```

Includes:

* Trading volume
* Adjusted prices
* Time comparison
* Interactive visualization

---

## Microsoft Histograms

Adjusted price histograms for Microsoft were generated for each year:

* MSFT2015-2016.pdf
* MSFT2017-2018.pdf
* MSFT2019-2020.pdf

These histograms allow analysis of:

* Price distribution
* Volatility
* Growth trends
* Dispersion changes

---

## Methodology

1. Data extraction from Yahoo Finance  
2. Data cleaning  
3. Selection of adjusted prices and volumes  
4. Time series construction  
5. Interactive visualization  
6. Histogram generation  
7. Comparative analysis  
