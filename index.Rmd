---
title       : Developing Data Products Project
subtitle    : 
author      : Justin Thomson justin.thomson@gmail.com
job         : Data Scientist
framework   : io2012  # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

Stock performance in European markets trended upwards in the 1990s, with some variance  

Here we look at the performance of markets in London (FTSE), France(CAC), Germany(DAX), and Switzerland(SMI)

For each country, we will chart the performance of a particular index, allowing the user to compare.  Decisions on which market to invest in could potentially be made from these charts (needless to say a lot has changed since 1998!)

--- 

## Market Background

Wikipedia Background on each Index:

[Swiss Market Index (SMI)](http://en.wikipedia.org/wiki/Swiss_Market_Index)

[German Stock Index (DAX)] (http://en.wikipedia.org/wiki/DAX)

[French Stock Index (CAC)] (http://en.wikipedia.org/wiki/CAC_40)

[London Stock Index (FTSE)] (http://en.wikipedia.org/wiki/FTSE_100_Index)

---

## Application Overview

The UI is built with shiny, and is intended to be clear and easy to use

A user simply chooses the market they're interested in from the dropdown and the resulting market data is plotted

The % gain for the chosen market is also calculated and shown along the y axis

---

## Application Details

The application uses R's built-in data set EuStockMarket

The shiny structure includes two files: ui.R and server.R 

These files are the basis for the generation of the raw HTML for the user interface, and the web server, respectively
