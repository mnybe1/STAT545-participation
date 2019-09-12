number * 2
number <- 5 + 2
number * 2

(times <- c(60, 40, 33, 15, 20, 55, 35)) #Make a vector and show output
times / 60

mean(times)
sqrt(times)
range(times)

#Comparisons - logicals
times < 30
times == 20 #Which of our travel times = 20 (single comparison)
times != 20
times > 20 & times < 50 #'&' compares vectors on either side
times < 20 | times > 50 #'|" - or
which(times < 30) #From a vector of T/F to index numbers
i <- which(times < 30)
sum(times < 30) #Number of variables less than 30

#Subsetting
times[3]  #3rd entry of times
times[-3] #Everything except 3rd entry
times[c(2,4)] #Subset 2nd and 4th value 
times[1:5]  #Extract 1st through 5th entry
times[times < 30] #Extract all entries less than 30 minutes
times[times > 50] <- 50 #Replacement of objects in a vector

#NA
times[8] <- NA 
times


#Functions, Part II
?mean
mean(times, na.rm = TRUE) #Always best to name argument (i.e. not as in example below)
mean(times, 0, TRUE)  #Not the best way

#Data frames
mtcars
head(mtcars)
str(mtcars)
names(mtcars)
mtcars$mpg
