library(DataExplorer)
library(tidyverse)

setwd = "C:/Users/jysethy/krishnaik/ML-R"

carprice = read.csv("Carprice_assignment.csv")

carprice %>% 
       create_report(
           output_file = "carprice_eda",
           output_dir = "C:/Users/jysethy/krishnaik/ML-R",
           y = "price",
           report_title = "Carprice EDA report"
       )