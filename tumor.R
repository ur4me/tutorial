#decision boundary

df <- data.frame(tumor.size = runif(100, 0, 7))
df$cancer <- ifelse(df$tumor.size > 4, 'yes','no')
df$tumor.size <- df$tumor.size * runif(100, 1,2)

a <- df %>% filter(cancer == 'yes')
b <- df %>% filter(cancer == 'no')

#http://t-redactyl.io/blog/2016/04/creating-plots-in-r-using-ggplot2-part-10-boxplots.html
library(ggplot2)
ggplot(df, aes(x = cancer, y = tumor.size)) +
  geom_boxplot()
