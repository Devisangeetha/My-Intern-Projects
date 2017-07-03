library(ggplot2)
library(wordcloud)

setwd("c:/testR/Kaggle/")
names <- read.csv("NationalNames.csv",stringsAsFactors = FALSE)
str(names)
summary(names)

names_female <-subset(names, Gender=="F")
names_male <- subset(names, Gender == "M")
Female_name <- "Mary"

Fnames <-subset(names_female, Name == Female_name)
ggplot(Fnames, aes(x=Year, y =Count, color=Count)) + geom_line(size=3,linetype=1)+ggtitle(paste0("Name ", Female_name, " Over Years"))
maxcount <- subset(names,Count == max(Count))

k1<-kmeans(names_female,10)
any(is.na(names_female))
head(names_female)
tail(names_female)

fname<-names_female$Name
corpus<-Corpus(VectorSource(fname))
corpus

wordcloud(corpus,min.freq=100,max.words=100,color="red")
