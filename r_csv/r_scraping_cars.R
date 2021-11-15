# my trial
library(XML)
library(rvest)
library(dplyr)
library(xml2)

wikipedia<-read_html('https://en.wikipedia.org/wiki/Comma-separated_values')

#extract tag elements content
wikipedia_nodes<-html_nodes(wikipedia,'.wikitable')

#extract elements data
html_text(wikipedia_nodes)

#extract data in tabular form, use 'xml' package
cars_df<-html_table(wikipedia_nodes)
cars_df

