library(lsr)
data <- read.csv("C:/Users/Ashley/Downloads/Housing.csv")
View(data) #view data set
head(data) #print first 6 rows, head does 6 by default

#Relationship between Area of the House and Price of the House:
cor(data$area, data$price)

#Does increasing Area of the House always result in increasing Price
spearman_area <- cor(data$area, data$price, method = "spearman")
print(spearman_area)

#Relationship between Number of House Bedrooms and Price
cor(data$bedrooms, data$price)

#Does increasing Number of House Bedrooms always result in increasing Price
spearman_bedrooms <- cor(data$bedrooms, data$price, method = "spearman")
print(spearman_bedrooms)

#Relationship between Number of House Bathrooms and Price
cor(data$bathrooms, data$price)

#Does increasing Number of House Bathrooms always result in increasing Price
spearman_bathrooms <- cor(data$bathrooms, data$price, method = "spearman")
print(spearman_bathrooms)




# Determine the strongest relationship, Use if-else statement (self-study):
if (spearman_area > spearman_bedrooms && spearman_area > spearman_bathrooms) {
  strongest_feature <- "Area of the House"
} else if (spearman_bedrooms > spearman_area && spearman_bedrooms > spearman_bathrooms) {
  strongest_feature <- "Number of House Bedrooms"
} else {
  strongest_feature <- "Number of Bathrooms"
}

# Print the result, (use paste() to cat string with variable)
print(paste("The feature with the strongest positive relationship to the Price of the House is:", strongest_feature))

