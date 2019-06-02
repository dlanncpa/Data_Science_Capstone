setwd("C:/Users/drlan/OneDrive/Documents/Coursera/Data Science Capstone")
unzip("Coursera-SwiftKey.zip")
list.files("final")
list.files("final/en_US")
blogs_data<-"final/en_US/en_US.blogs.txt"
news_data<-"final/en_US/en_US.news.txt"
twitter_data<-"final/en_US/en_US.twitter.txt"
file.size(blogs_data)/2^20
length(readLines(twitter_data, skipNul = TRUE))
max(nchar(readLines(blogs_data, skipNul = TRUE)))
max(nchar(readLines(news_data, skipNul = TRUE)))
max(nchar(readLines(twitter_data, skipNul = TRUE)))
sum(grepl("love", readLines(twitter_data, skipNul = TRUE), ignore.case = FALSE, perl = TRUE))/sum(grepl("hate", readLines(twitter_data, skipNul = TRUE), ignore.case = FALSE, perl = TRUE))
twitter<-readLines(twitter_data, skipNul = TRUE)
twitter[grep("biostats", twitter)]
sum(grepl("A computer once beat me at chess, but it was no match for me at kickboxing", twitter))
