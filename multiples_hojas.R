library(tidyverse)
library(readxl)

snames = excel_sheets("multiples_hojas.xlsx")
# sname = '2009'
leer_hoja = function(sname){
  df = read_excel("multiples_hojas.xlsx", sheet = sname)
  df$year = sname
  df
}
l_hojas = map(snames, leer_hoja)

bind_rows(l_hojas, .id = 'iyear')
