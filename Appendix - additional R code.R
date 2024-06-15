# ============== Appendix ===================================

# data visualization: Scatter plot
# Load required libraries
library(ggplot2)

# Create sample data
set.seed(123)
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

# Create scatter plot
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  labs(title = "Scatter Plot", x = "X-axis", y = "Y-axis")

# data visualization: Box plot
# Load required libraries
library(ggplot2)

# Create sample data
set.seed(123)
data <- data.frame(
  group = rep(c("Group 1", "Group 2"), each = 100),
  value = c(rnorm(100), rnorm(100, mean = 2))
)

# Create box plot
ggplot(data, aes(x = group, y = value)) +
  geom_boxplot() +
  labs(title = "Box Plot", x = "Group", y = "Value")

# Data visualization: Bar chart
# Load required libraries
library(ggplot2)

# Create sample data
data <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(10, 20, 15, 25)
)

# Create bar chart
ggplot(data, aes(x = category, y = value)) +
  geom_bar(stat = "identity") +
  labs(title = "Bar Chart", x = "Category", y = "Value")

# Data visualization: Pie chart
# Create sample data
data <- data.frame(
  category = c("A", "B", "C", "D"),
  value = c(10, 20, 15, 25)
)

# Create pie chart
ggplot(data, aes(x = "", y = value, fill = category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start=0) +
  labs(title = "Pie Chart", fill = "Category")





#===================================== Measure time & Memory execution ===========

# Measure time and memory for 'if'
# Measure time
start_time <- Sys.time()  # Start measuring time

# Measure memory
mem_before <- object.size(x)  # Measure memory usage before execution

# Code snippet
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is less than or equal to 5")
}

# Measure memory after execution
mem_after <- object.size(x)

# Stop measuring time
end_time <- Sys.time()

# Calculate execution time
execution_time <- end_time - start_time

# Calculate memory usage difference
mem_diff <- mem_after - mem_before

# Print results
print(paste("Execution time:", execution_time, "seconds"))
print(paste("Memory usage difference:", mem_diff / (1024 * 1024), "MB"))

## part 2

# Measure time
start_time <- Sys.time()  # Start measuring time

# Measure memory
mem_usage <- numeric()
mem_usage <- c(mem_usage, object.size(x))  # Measure memory usage before execution

# Code snippet
x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is less than or equal to 5")
}

# Measure memory after execution
mem_usage <- c(mem_usage, object.size(x))

# Stop measuring time
end_time <- Sys.time()

# Calculate execution time
execution_time <- end_time - start_time

# Print results
print(paste("Execution time:", execution_time, "seconds"))
print(paste("Memory usage before execution:", mem_usage[1] / (1024 * 1024), "MB"))
print(paste("Memory usage after execution:", mem_usage[2] / (1024 * 1024), "MB"))



















# R

# Time and memory measurement
start_time <- Sys.time()  # Start measuring time
mem_usage <- numeric()

x <- 10
if (x > 5) {
  print("x is greater than 5")
} else {
  print("x is less than or equal to 5")
}

mem_usage <- c(mem_usage, object.size(i)) # Measure memory usage

Rprof(NULL)

end_time <- Sys.time()  # Stop measuring time
execution_time <- end_time - start_time
print(paste("Execution time:", execution_time, "seconds"))

# Calculate memory usage during the loop in megabytes
memory_used <- sum(mem_usage) / (1024 * 1024)
print(paste("Memory usage:", memory_used, "MB"))









# Comparing time and memory execution among R and Python


# Comparing between R & Python
# Example loop in R
start_time <- Sys.time()  # Start measuring time
mem_usage <- numeric()

Rprof(filename = "Rprof.out", memory.profiling = TRUE)
for (i in 1:10000) {
  print(i)
  mem_usage <- c(mem_usage, object.size(i)) # Measure memory usage for each iteration
}
Rprof(NULL)

end_time <- Sys.time()  # Stop measuring time
execution_time <- end_time - start_time
print(paste("Execution time for R loop:", execution_time, "seconds"))

# Calculate memory usage during the loop in megabytes
memory_used <- sum(mem_usage) / (1024 * 1024)
print(paste("Memory usage during R loop:", memory_used, "MB"))









#R
# Example of data manipulation in R using dplyr package
library(dplyr)

# Create a data frame
data <- data.frame(
  id = 1:5,
  name = c("John", "Alice", "Bob", "Emily", "David"),
  age = c(25, 30, 28, 35, 40),
  salary = c(50000, 60000, 55000, 70000, 75000)
)

# Filter data for individuals with age greater than 30
filtered_data <- filter(data, age > 30)

# Print filtered data
print(filtered_data)

# ==============================


# Example of data visualization in R using ggplot2 package
library(ggplot2)

# Create a scatter plot
ggplot(data, aes(x = age, y = salary, color = name)) +
  geom_point(size = 3) +
  labs(title = "Age vs. Salary", x = "Age", y = "Salary") +
  theme_minimal()


#============================
# R

start_ime <- Sys.time()
for (i in 1:1000000) {
  x <- i * i
}

end_time <- Sys.time()

delta_time <- end_time - start_time
delta_time



# R 
# Example loop in R
start_time <- Sys.time()  # Start measuring time

for (i in 1:1000) {
  print(i)
}

end_time <- Sys.time()  # Stop measuring time
execution_time <- end_time - start_time
print(paste("Execution time for R loop:", execution_time, "seconds"))


# ========================================
# Sample dataset
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Weight = c(5.2, 4.8, 6.1, 5.5, 4.9),
  Length = c(3.5, 3.2, 3.8, 3.6, 3.3),
  Age = c(10, 9, 11, 10, 9)
)

# Display the first few rows of the dataset
cat("First few rows of the dataset:\n")
print(head(data))

# Summary statistics
cat("\nSummary statistics:\n")
print(summary(data))

# Data types of columns
cat("\nData types of columns:\n")
print(sapply(data, class))

# Missing values
cat("\nMissing values:\n")
print(colSums(is.na(data)))

# Data visualization (Example: Histogram)
hist(data$Weight, main='Histogram of Weight', xlab='Weight', ylab='Frequency', breaks=3)


