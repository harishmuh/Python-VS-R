# R
# Data Manipulation - Data frame
# Load required libraries
library(dplyr)

# Create sample fish population data
fish_data <- data.frame(
  species = c("Trout", "Salmon", "Perch", "Bass"),
  population = c(1000, 2000, 1500, 3000)
)

# Add a new column for average weight
fish_data <- mutate(fish_data, avg_weight = 
                                          ifelse(species == "Trout", 1.2,
                                          ifelse(species == "Salmon", 1.5,
                                          ifelse(species == "Perch", 0.8,
                                          ifelse(species == "Bass", 2, NA
)))))

# Print the modified data
print(fish_data)

# R
# Data wrangling
# Load required libraries
library(dplyr)

# Assuming we have additional data for fish length
fish_length <- data.frame(
  species = c("Trout", "Salmon", "Perch", "Bass"),
  avg_length = c(30, 35, 25, 40)
)

# Merge fish_data with fish_length
merged_data <- inner_join(fish_data, fish_length, by = "species")

# Print the merged data
print(merged_data)




# Data cleaning
# Check for missing values in fish_data
missing_values <- sum(is.na(fish_data))

# Print the number of missing values
print(paste("Number of missing values:", missing_values))


# Replace missing values with median
fish_data$population[is.na(fish_data$population)] <- median(fish_data$population, na.rm = TRUE)

# Print the cleaned data
print(fish_data)



# Duplicated data
# Check for duplicated rows in fish_data
duplicated_rows <- sum(duplicated(fish_data))

# Print the number of duplicated rows
print(paste("Number of duplicated rows:", duplicated_rows))


# Data visualization: scatter plot
# Load required libraries
library(ggplot2)

# Create sample data for fish population
set.seed(123)
fish_data <- data.frame(
  length = rnorm(100, mean = 30, sd = 5),
  weight = rnorm(100, mean = 500, sd = 100)
)

# Create scatter plot with color enhancements
ggplot(fish_data, aes(x = length, y = weight, color = length)) +
  geom_point() +
  scale_color_gradient(low = "blue", high = "red") +
  labs(title = "Fish Population", x = "Length (cm)", y = "Weight (g)")

# Data visualization: Box plot
# Load required libraries
library(ggplot2)

# Create sample data for fish population in different regions
fish_data <- data.frame(
  region = rep(c("North", "South"), each = 100),
  weight = c(rnorm(100, mean = 500, sd = 100), rnorm(100, mean = 700, sd = 150))
)

# Create box plot with color enhancements
ggplot(fish_data, aes(x = region, y = weight, fill = region)) +
  geom_boxplot() +
  scale_fill_manual(values = c("blue", "orange")) +
  labs(title = "Fish Population by Region", x = "Region", y = "Weight (g)")




# Data visualization: Bar chart
# Load required libraries
library(ggplot2)

# Create sample data for fish species counts
fish_species <- c("Trout", "Salmon", "Bass", "Perch")
fish_counts <- c(50, 30, 40, 60)
fish_data <- data.frame(species = fish_species, count = fish_counts)

# Create bar chart with color enhancements
ggplot(fish_data, aes(x = species, y = count, fill = species)) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  labs(title = "Fish Species Counts", x = "Species", y = "Count")



# Data visualization: Pie chart
# Create sample data for fish species distribution
fish_species <- c("Trout", "Salmon", "Bass", "Perch")
fish_distribution <- c(0.3, 0.2, 0.25, 0.25)
fish_data <- data.frame(species = fish_species, distribution = fish_distribution)

# Create pie chart with color enhancements
ggplot(fish_data, aes(x = "", y = distribution, fill = species)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  scale_fill_manual(values = c("green", "blue", "orange", "red")) +
  labs(title = "Fish Species Distribution")


# ================== Anova
# Load necessary libraries
library(tidyr)
library(dplyr)
library(stats)

# Dummy data for fish weight after different treatments of artificial diets
fish_data <- data.frame(
  Treatment = factor(rep(c("Control", "Diet1", "Diet2", "Diet3"), each = 20)),
  Weight = c(100, 98, 105, 103, 101, 97, 102, 99, 96, 104,
             110, 112, 108, 115, 113, 111, 114, 109, 107, 106,
             120, 122, 118, 121, 119, 117, 123, 125, 124, 126,
             130, 132, 128, 129, 131, 135, 127, 134, 133, 136)
)

# Perform ANOVA
anova_result <- aov(Weight ~ Treatment, data = fish_data)

# Perform Tukey's test for multiple comparisons
tukey_result <- TukeyHSD(anova_result)

# Summary of ANOVA
summary(anova_result)

# Summary of Tukey's test
summary(tukey_result)

# Corrected summary of Tukey's test
print(tukey_result)

# R experiment
# Generate simulated data in R
set.seed(123)  # for reproducibility

# Create a data frame with treatment groups and corresponding weights
fish_data <- data.frame(
  Treatment = factor(rep(c("Control", "Diet1", "Diet2", "Diet3"), each = 20)),
  Weight = c(rnorm(20, mean = 100, sd = 10),
             rnorm(20, mean = 110, sd = 10),
             rnorm(20, mean = 120, sd = 10),
             rnorm(20, mean = 125, sd = 10))
)

# Perform ANOVA
anova_result <- aov(Weight ~ Treatment, data = fish_data)

# Print ANOVA summary
summary(anova_result)


