library("tidyverse")
library("here")

gapminder_csv <- read_csv('./gapminder_sum.csv')

remove(list = ls()) # only deletes variables, not packages. Need to do this to remove ALL: 

read_csv('./test/tes/te/t/gapminder_sum.csv')

#another way using 'here'. 
#platform agnostic, di-structure agnostic
read_csv(here::here("test", "tes", "te", "t", "gapminder_sum.csv"))

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import urls BUT read_xls requires download

#Task: change above to use the "here::here" package
download.file(url = data_url, destfile = here::here("Test", "greatestGivers.xls"))


# Recommendation: Use "basename"
# https://www.rdocumentation.org/packages/base/versions/3.6.1/topics/basename
file_name <- basename(data_url) #interesting function to get the file name from a URL

library(readxl) # this will let you read in excel files
philanthropists <- read_excel(here::here ("Test", file_name), trim_ws = TRUE) #ws strips out blank spaces before or after any numbers/characters

view(philanthropists)
head(philanthropists)

mri_file <- (here("Test", "Firas-MRI.xlsx"))
mri <- read_excel(mri_file, range = "A1:L12")
view(mri)

mri <- mri[,-10]

mri %>%
  pivot_longer(cols = 'Slice 1':'Slice 8', 
               names_to = 'slice_no')

