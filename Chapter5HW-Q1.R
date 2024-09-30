library(lsr)
data <- read.csv("C:/Users/Ashley/Downloads/StudentMarksDataset.csv")
View(data) #view data set
head(data) #print first 6 rows, head does 6 by default

mean(data$Std_Marks)
median(data$Std_Marks)

# 15% Trimmed Mean of scores
mean(data$Std_Marks, trim = 0.15)

#50% trimmed mean of score, Alternative: directly use median
mean(data$Std_Marks, trim = 0.5) 
#0% timmed mean of scores, Alternative: directly use mean
mean(data$Std_Marks, trim = 0.0) 

#Mode for branch:
modeOf(data$Std_Branch)

#Range of scores:
range(data$Std_Marks)

#IQR for scores:
IQR(data$Std_Marks)

#40th quantile for scores:
quantile(data$Std_Marks, 0.40)

#Mean Absolute Deviation of students’ marks:
mean_absolute_deviation <- mean(abs(data$Std_Marks - mean(data$Std_Marks)))

#Median Absolute Deviation of students’ marks
mad(data$Std_Marks)

#Variance of students’ marks
var(data$Std_Marks)

#Standard Deviation of students’ marks
sd(data$Std_Marks)



#If the student’s score/mark is 71.82, what is the standard
#score of his score/mark?
#Describe/Interpret this score/mark in relation to this dataset(see .docx file)

# Calculate the mean and standard deviation
mean_score <- mean(data$Std_Marks)
std_dev <- sd(data$Std_Marks)

# Given score
student_score <- 71.82

# Calculate the standard score (z-score)
z_score <- (student_score - mean_score) / std_dev
z_score
