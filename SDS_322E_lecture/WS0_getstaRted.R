#--------------------------------------------------#
# Title: Getting started with R
# Last date modified: 8/23/2023
#--------------------------------------------------#

# This file is called an R script (a file containing R code)
# Notice that this script is called "getstaRted.R" (see tab above)
# Think of R files (.R) as text files that contain R code

# Hashtags are used before text comments to explain what the code is for 
## You can put more than one if you want!

###############  Let's get staRted! ###############

# There are 4 panes in the R Studio window
# This pane (top left) is the Editor pane, where you can edit the code

# Put your cursor anywhere on the line below and hit ctrl+enter 
# or click "Run" to submit code
print("welcome to R!")

# Notice how your output popped out on the bottom pane: this is the Console!

#--------------------------#
## R as a calculator -----##
#--------------------------#

6*6 # 6 times 6
6/2 # 6 divided by 2
6^2 # 6 squared

##### Try it! #####
# Multiply 6 by all previous whole numbers (except 0). 
# Note: This is called the factorial of 6.

6*5*4*3*2*1
factorial(6)

#--------------------------#
## Built-in functions ----##
#--------------------------#

# Base R comes with many built-in functions
factorial(6) # better to use this function for calculating factorials!
log10(10) # log base 10
log(10) # unfortunately in R, "log" really means "ln" (log base e...)
exp(0) # exponential function (base e)
exp(1) # value of the number e
log(exp(1)) # why does that make sense?

# Let's try the function choose()
# If you need to know what arguments a function needs:
# type the function name, click inside of it, and hit tab
choose()

# choose() takes two arguments n and k
choose(6,2)

# If you need to know what a function does, put a ? in front of the function name
?choose

# Note that the documentation appears in the Output pane!

#--------------------------#
## Objects ---------------##
#--------------------------#

# The pane in the top right is the Environment. 
# This is where data, values, and created functions will go!
# There's nothing there yet because we haven't created any objects

# This notation "<-" is an assignment operator: 
variety <- "Tala"
red <- TRUE
sweetness <- 2

# Now do you see these objects in the Environment? 
# It saves what is on the right as an object whose name is on the left
variety

# You can also use "=" for assignment, but it is not recommended to do so
# This is because the double equal sign (==) is used for logical tests
# Try those:
2 == 2
2 == 3

# Object names... 
# start with a letter, 
# can’t contain spaces, 
# should not be predefined in R (e.g., do not label an object "log")

#--------------------------#
## Data types ------------##
#--------------------------#

# Variables in R can be of different types.
# Use class() to check what type of values we saved in the environment
class(variety)
class(sweetness)
class(red)

#--------------------------#
## Vectors ---------------##
#--------------------------#

# Create a vector: combine elements with c() which stands for concatenate
varieties = c('Gala', 'Granny Smith', 'Golden Delicious', 'Fuji') 
varieties
# Note that either ' ' or " " can be used to define character values

##### Try it! #####
# What is the type of values in the object varieties?

class(varieties)

# Vector with numeric values
suite <- 1:4 # what does ":" do?
suite
class(suite)

# Let's play around with the suite object
# Add up all the values in the suite using the sum() function
sum(suite)

# How many values does our "suite" vector contain?
length(suite)

##### Try it! #####
# What is the mean value of the suite? 

mean(suite)

# Write the suite in descending order and overwrite the suite object
suite <- rev(suite)
# Take a quick look
suite
# Now let's remove it momentarily with the rm() function
rm(suite)

# Get the suite object back by rerunning the line of code where you created suite

# We can add 1 to every data point (many operations are vectorized)
suite - 1

# We can multiply every original value by 2 and overwrite suite
suite <- suite*2
suite

# What if we add some more data in suite?
suite = c(suite, 11)
suite

# What if this data is of a different type?
c(suite, "very sweet")
# Check the type of data now
class(c(suite, "very sweet"))

# R coerced the numeric values into characters
# What if we want to coerce suite as a numeric vector? 
as.numeric(c(suite, "very sweet")) # what happened?

#--------------------------#
## Data frames -----------##
#--------------------------#

# A data frame is a very important data structure for most tabular data
sweet_apples <- data.frame(
  variety = c('Gala', 'Granny Smith', 'Golden Delicious', 'Fuji'),
  sweetness = c(2, 4, 3, 1),
  red = c(T,F,F,T)
)
sweet_apples

# Rows represent different observations, columns represent different variables
str(sweet_apples) # Use str() to get more information about an object

# You can access the different variables with $
sweet_apples$variety

##### Try it! #####
# Calculate the mean sweetness in this dataframe

mean(sweet_apples$sweetness)

# What if we wanted to add a variable?
sweet_apples$level <- c('highly sweet','very tart','sweet','sweetest')
# Take a quick look
sweet_apples

#--------------------------#
## Indexing --------------##
#--------------------------#

# Recall our "suite" object
suite

# Index a specific value of a vector using [ ]
suite[1] # grab the first element
suite[3:5] # grab the 3rd through the 5th elements 
suite[c(3,5)] # grab only the 3rd and the 5th elements

# Index data frames with 2 numbers: 1 for rows and 1 for columns
# Recall our "apples" object
sweet_apples

# Index a specific row,column using [ ]
sweet_apples[1,2] # grab the 1st row, 2nd column
sweet_apples[1, ] # grab the first row
sweet_apples[ ,2] # grab the second column

##### Try it! #####
# Find the level of sweetness for Fuji apples with indexing

sweet_apples[4,2]

# Basic logical indexing: index on some conditions
sweet_apples[sweet_apples$red == T, ] # keep rows with color red
sweet_apples[sweet_apples$sweetness < 3, ] # keep rows with sweetness less than 3

###############  Your turn! ###############

# Form a group of 6 students

# Part 1: Icebreaker questions
# Each student selects one question below and answers it
# a. How is your first week of classes going?
# b. If you were a wrestler, what would be your entrance theme song?
# c. What is your spirit animal?

# Part 2: Collect and analyze data!
# a. Create a dataframe containing the following information
# - the names of your classmates in your group (including yourself)
# - their age
# - their height
student_info <- data.frame(
    name = c('Austine', 'Nhan', 'Tiffany', 'A', 'A', 'K'),
    age = c(21,21,21,20,20,20),
    height = c(71, 64, 60, 64, 64, 70) # IN INCHES ONLY
)
# b. Find the mean age and height of students in your group. Report it here (copy/paste link in browser):

mean(student_info$age)
mean(student_info$height)

https://docs.google.com/spreadsheets/d/1HnzWshQGSQ9kLLTp4ArPLsXpPYAOhdEi9tqKLkA7DYc/edit?usp=sharing
# c. Do you think all groups will get the same mean age? mean height? Why/Why not?
        ## no because there is too much variability per individual ##