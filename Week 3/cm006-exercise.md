---
title: 'cm006: `dplyr` Exercise'
output:
  html_document:
    keep_md: true
editor_options:
  chunk_output_type: inline
---
<!---The following chunk allows errors when knitting--->



**Optional, but recommended startup**:

1. Change the file output to both html and md _documents_ (not notebook).

2. `knit` the document. 

3. Stage and commit the rmd, and knitted documents.

# Intro to `dplyr` syntax

Load the `gapminder` and `tidyverse` packages. Hint: `suppressPackageStartupMessages()`!
    - This loads `dplyr`, too.
    

```r
# load your packages here:
library(gapminder)
library(tidyverse)
```
    

## `select()` (8 min)

1. Make a data frame containing the columns `year`, `lifeExp`, `country` from the gapminder data, in that order.


```r
select(gapminder, FILL_THIS_IN)
```

```
## Error in .f(.x[[i]], ...): object 'FILL_THIS_IN' not found
```


2. Select all variables, from `country` to `lifeExp`.


```r
# This will work:
select(gapminder, country, continent, year, lifeExp)
```

```
## # A tibble: 1,704 x 4
##    country     continent  year lifeExp
##    <fct>       <fct>     <int>   <dbl>
##  1 Afghanistan Asia       1952    28.8
##  2 Afghanistan Asia       1957    30.3
##  3 Afghanistan Asia       1962    32.0
##  4 Afghanistan Asia       1967    34.0
##  5 Afghanistan Asia       1972    36.1
##  6 Afghanistan Asia       1977    38.4
##  7 Afghanistan Asia       1982    39.9
##  8 Afghanistan Asia       1987    40.8
##  9 Afghanistan Asia       1992    41.7
## 10 Afghanistan Asia       1997    41.8
## # … with 1,694 more rows
```

```r
# Better way:
select(gapminder, FILL_THIS_IN)
```

```
## Error in .f(.x[[i]], ...): object 'FILL_THIS_IN' not found
```


3. Select all variables, except `lifeExp`.


```r
select(gapminder, FILL_THIS_IN)
```

```
## Error in .f(.x[[i]], ...): object 'FILL_THIS_IN' not found
```

4. Put `continent` first. Hint: use the `everything()` function.


```r
select(gapminder, FILL_THIS_IN, FILL_THIS_IN)
```

```
## Error in .f(.x[[i]], ...): object 'FILL_THIS_IN' not found
```


5. Rename `continent` to `cont`.


```r
# compare
select(gapminder, FILL_THIS_IN)
```

```
## Error in .f(.x[[i]], ...): object 'FILL_THIS_IN' not found
```

```r
rename(gapminder, FILL_THIS_IN)
```

```
## All arguments must be named
```


## `arrange()` (8 min)

1. Order by year.


```r
arrange(gapminder, FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

2. Order by year, in descending order.


```r
arrange(gapminder, FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

3. Order by year, then by life expectancy.


```r
arrange(gapminder, FILL_THIS_IN, FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

## Piping, `%>%` (8 min)

Note: think of `%>%` as the word "then"!

Demonstration:

Here I want to combine `select()` Task 1 with `arrange()` Task 3.

This is how I could do it by *nesting* the two function calls:


```r
# Nesting function calls can be hard to read
arrange(select(gapminder, year, lifeExp, country), year, lifeExp)
```

Now using with pipes:


```r
# alter the below to include 2 "pipes"
arrange(select(gapminder, year, lifeExp, country), year, lifeExp)
```

```
## # A tibble: 1,704 x 3
##     year lifeExp country      
##    <int>   <dbl> <fct>        
##  1  1952    28.8 Afghanistan  
##  2  1952    30   Gambia       
##  3  1952    30.0 Angola       
##  4  1952    30.3 Sierra Leone 
##  5  1952    31.3 Mozambique   
##  6  1952    32.0 Burkina Faso 
##  7  1952    32.5 Guinea-Bissau
##  8  1952    32.5 Yemen, Rep.  
##  9  1952    33.0 Somalia      
## 10  1952    33.6 Guinea       
## # … with 1,694 more rows
```

# Resume lecture 

Return to guide at section 6.7.

## `filter()` (10 min)

1. Only take data with population greater than 100 million.


```r
gapminder %>%
  filter(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

2. Your turn: of those rows filtered from step 1., only take data from Asia.


```r
gapminder %>%
  filter(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

3. Repeat 2, but take data from countries Brazil, and China. 


```r
gapminder %>%
  filter(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

## `mutate()` (10 min)

Let's get: 

- GDP by multiplying GPD per capita with population, and
- GDP in billions, named (`gdpBill`), rounded to two decimals.


```r
gapminder %>%
  mutate(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

Notice the backwards compatibility! No need for loops!

Try the same thing, but with `transmute` (drops all other variables). 


```r
gapminder %>%
  transmute(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

The `if_else` function is useful for changing certain elements in a data frame.

Example: Suppose Canada's 1952 life expectancy was mistakenly entered as 68.8 in the data frame, but is actually 70. Fix it using `if_else` and `mutate`. 


```r
gapminder %>%
  mutate(FILL_THIS_IN)
```

```
## Error: object 'FILL_THIS_IN' not found
```

Your turn: Make a new column called `cc` that pastes the country name followed by the continent, separated by a comma. (Hint: use the `paste` function with the `sep=", "` argument).



These functions we've seen are called __vectorized functions__.

## git stuff (Optional)

Knit, commit, push!

# Bonus Exercises

If there's time remaining, we'll practice with these three exercises. I'll give you 1 minute for each, then we'll go over the answer.

1. Take all countries in Europe that have a GDP per capita greater than 10000, and select all variables except `gdpPercap`. (Hint: use `-`).

2. Take the first three columns, and extract the names.

3. Of the `iris` data frame, take all columns that start with the word "Petal". 
    - Hint: take a look at the "Select helpers" documentation by running the following code: `?tidyselect::select_helpers`.
    
4. Convert the population to a number in billions.

5. Filter the rows of the iris dataset for Sepal.Length >= 4.6 and Petal.Width >= 0.5.

Exercises 3. and 5. are from [r-exercises](https://www.r-exercises.com/2017/10/19/dplyr-basic-functions-exercises/).
