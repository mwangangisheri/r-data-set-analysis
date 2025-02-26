library(datasets)
data("swiss")
str(swiss)
summary(swiss)

par(mfrow = c(2, 3))
for (col in colnames(swiss)) {boxplot(swiss[[col]], main = col, col = "lightblue")}

 
library(corrplot)
corr_matrix <- cor(swiss)
corrplot(corr_matrix, method = "color", type = "upper", tl.col = "black", tl.srt=45 = 45)
corrplot(corr_matrix, method = "color", type = "upper", tl.col = "black", tl.srt = 45)
model <- lm(Fertility ~ ., data = swiss)
summary(model)

par(mfrow = c(2, 2))
plot(model)



