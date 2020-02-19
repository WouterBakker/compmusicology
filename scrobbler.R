library(RLastFM)
library(scrobbler)
library(tidyverse)
library(chron)
library(DescTools)

rm(list=ls()) #removes variables from workspace

#Data loading
setwd("C:/Users/Gebruiker/OneDrive/Psychologie/Jaar 3/Computational Musicology/Last FM")
scrobbles <- read.csv("scrobbles.main.csv")
write.csv(scrobbles, "scrobbles.main.csv")

scrobbles <- read.csv("scrobbles.main.csv")

scrobbles <-  scrobbles[which(scrobbles$year >= 2014),]

#Tab of artists, albums and tracks, weekdays, dates etc.
tablate = function(column, FUN) {
  df = as.data.frame(table(column))
  df[order(df[,2], decreasing = FUN),]
} #function for making tab out of given data, turning it into a dataframe and sorting it by frequency

tab.art = tablate(scrobbles$artist, T)
tab.alb = tablate(scrobbles$album, T)
tab.trc = tablate(scrobbles$song_title, T)
tab.year = tablate(scrobbles$year, F)
tab.month = tablate(scrobbles$month, F)
tab.day = tablate(scrobbles$weekday, F)
tab.hour = tablate(scrobbles$hour, F)
tab.daymonth = tablate(paste(scrobbles$year, scrobbles$month), F)


rowMeans(tab.hour[,2])

dates = scrobbles[sort(scrobbles[,"date"], F),]

as.Date(scrobbles[,"date"][1]) + 1


dates = as.Date(scrobbles[,"date"]) %>%
  sort(F)

as.numeric(dates[length(dates)] - dates[1]) * 24

tab.hour[1,2] / 2


tab.hour = cbind(tab.hour, average = )


mean(tab.hour[,2])


ggplot(tab.hour, aes(x = as.numeric(column), y = as.numeric(Freq))) + 
  geom_smooth(span = 0.3) + 
  geom_point()

#Subsets certain artists
namen = names(tab.art)
mac = scrobbles[scrobbles$artist == names(tab.art[1]),]
griz = scrobbles[scrobbles$artist == names(tab.art[2]),]
yola = scrobbles[scrobbles$artist == namen[10],]
yola = cbind(yola, length = 1:length(yola[,1]), asdate = as.Date(yola$date))
yola = sort(yola$asdate)
plot(x = yola$asdate, y = yola$length)

yola[order(yola$asdate),]

plot(x = as.Date(yola[1:100,]$date), y = 1:100)

rowMeans(hour)


lethergo = mac[mac$song_title == "Let Her Go",]

fibo = function(vec){
  fib = 0
  for(i in 1:length(vec)){
    fib[i] = sum(vec[1]:vec[i])
  }
  return(fib)
}

fib = fibo(x)

lhg = 1:length(sorted)
let = fibo(lhg)

lethergo = cbind(as.matrix(lethergo), c(1:length(lethergo[,1])))

sorted = as.matrix(sort(lethergo$date))
ss = cbind(sorted, 1:length(sorted[,1]))
ss2 = ss[1:50,]
plot(x = as.Date(ss2[,1]), y = ss2[,2])

mac[which(mac$song_title == "Let Her Go"),]$date

mat = matrix(ncol = length(trekz), nrow = 1000)
colnames(mat) = trekz

trekz = names(table(as.vector(mac$song_title)))

mac$song_title == trekz[,mac$song_title]
mat[,"Let Her Go"]

mat[,1:length(mac$date[mac$song_title == "Let Her Go"])] = mac$date[mac$song_title == "Let Her Go"]
mat[,"Let Her Go"] = 1:10
vec = mac$date[mac$song_title == "Let Her Go"]
mat[,1:10] = vec
df = data.frame(ncol = 1000, row.names = trekz )

df["Let Her Go",] = mac$date[mac$song_title == "Let Her Go"]
table(mac$song_title)


df["Let Her Go",] = 1:10



x = 1:10
y=0
for(i in 1:length(x)){
  y[i] = sum(x[1]:x[i])
}

sum(x[1]:x[3])

mac.tab.hour = tablate(mac$hour, F)
griz.tab.hour = tablate(griz$hour, F)


table(paste(scrobbles$year, scrobbles$month))












