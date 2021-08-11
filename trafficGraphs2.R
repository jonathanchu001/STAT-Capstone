load("~/R Code/TrafficChallenge2 .Rdata")
library(lubridate)
library(ggplot2)
library(ggpubr)

timeStrings = substr(TrafficData[,1],1,16)

date = ymd_hm(timeStrings)


#date of each sensor
sens5 = TrafficData[,6]
sens10 = TrafficData[,11]

#removing NA values in each sensor
sens5na = which(is.na(sens5))
sens10na = which(is.na(sens10))

##testing ggplot for time series of each sensor for entire year, commented out sensors other than 5 and 10
ggplot() + geom_line(aes(x=date[-c(sens5na)],y=sens5[-c(sens5na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Plot")
ggplot() + geom_line(aes(x=date[-c(sens10na)],y=sens10[-c(sens10na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Plot")

#index to get every 10 minutes of ONE day (288 indexes per day, every other gives 144)
tenMinIndex = seq(1,287,2)
twentyMinIndex = seq(1,287,4)

#getting the day of accident
S5A1 = which(substr(date,1,10)=="2017-02-06")
S5A2 = which(substr(date,1,10)=="2017-10-07")
S5A3 = which(substr(date,1,10)=="2017-07-24")
S5A4 = which(substr(date,1,10)=="2017-03-29")
S10A1 = which(substr(date,1,10)=="2017-01-27")
S10A2 = which(substr(date,1,10)=="2017-01-18")
S10A3 = which(substr(date,1,10)=="2017-04-06")
S10A4 = which(substr(date,1,10)=="2017-06-16")
S10A5 = which(substr(date,1,10)=="2017-11-15")


#plotting days of the accidents at their corresponding sensors
s5a1 <- ggplot() + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=sens5[S5A1[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1") + geom_vline(xintercept = ymd_hm("2017-02-06 08:10"),colour="red")
s5a2 <- ggplot() + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=sens5[S5A2[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2") + geom_vline(xintercept = ymd_hm("2017-10-07 17:47"),colour="red")
s5a3 <- ggplot() + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=sens5[S5A3[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3") + geom_vline(xintercept = ymd_hm("2017-07-24 12:12"),colour="red")
s5a4 <- ggplot() + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=sens5[S5A4[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4") + geom_vline(xintercept = ymd_hm("2017-03-29 08:25"),colour="red")
s10a1 <- ggplot() + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=sens10[S10A1[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1") + geom_vline(xintercept = ymd_hm("2017-01-27 20:34"),colour="red")
s10a2 <- ggplot() + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=sens10[S10A2[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2") + geom_vline(xintercept = ymd_hm("2017-01-18 14:23"),colour="red")
s10a3 <- ggplot() + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=sens10[S10A3[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3") + geom_vline(xintercept = ymd_hm("2017-04-06 16:33"),colour="red")
s10a4 <- ggplot() + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=sens10[S10A4[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4") + geom_vline(xintercept = ymd_hm("2017-06-16 06:34"),colour="red")
s10a5 <- ggplot() + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=sens10[S10A5[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5") + geom_vline(xintercept = ymd_hm("2017-11-15 17:15"),colour="red")

##weeks before and after accidents
#getting the weeks before and after for sensor 5 accident 1
S5A1_2weekBefore = which(substr(date,1,10)=="2017-01-23")
S5A1_1weekBefore = which(substr(date,1,10)=="2017-01-30")
S5A1_1weekAfter = which(substr(date,1,10)=="2017-02-13")
S5A1_2weekAfter = which(substr(date,1,10)=="2017-02-20")

s5a1b2 <- ggplot() + geom_line(aes(x=date[S5A1_2weekBefore[twentyMinIndex]],y=sens5[S5A1_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 2 weeks before")
s5a1b1 <- ggplot() + geom_line(aes(x=date[S5A1_1weekBefore[twentyMinIndex]],y=sens5[S5A1_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 1 week before")
s5a1a1 <- ggplot() + geom_line(aes(x=date[S5A1_1weekAfter[twentyMinIndex]],y=sens5[S5A1_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 1 week after")
s5a1a2 <- ggplot() + geom_line(aes(x=date[S5A1_2weekAfter[twentyMinIndex]],y=sens5[S5A1_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 2 weeks after")
s5a1Figure <- ggarrange(s5a1b2,s5a1b1,s5a1,s5a1a1,s5a1a2)

#weeks before and after for sensor 5 accident 2
S5A2_2weekBefore = which(substr(date,1,10)=="2017-09-23")
S5A2_1weekBefore = which(substr(date,1,10)=="2017-09-30")
S5A2_1weekAfter = which(substr(date,1,10)=="2017-10-14")
S5A2_2weekAfter = which(substr(date,1,10)=="2017-10-21")

s5a2b2 <- ggplot() + geom_line(aes(x=date[S5A2_2weekBefore[twentyMinIndex]],y=sens5[S5A2_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2 2 weeks before")
s5a2b1 <- ggplot() + geom_line(aes(x=date[S5A2_1weekBefore[twentyMinIndex]],y=sens5[S5A2_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2 1 week before")
s5a2a1 <- ggplot() + geom_line(aes(x=date[S5A2_1weekAfter[twentyMinIndex]],y=sens5[S5A2_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2 1 week after")
s5a2a2 <- ggplot() + geom_line(aes(x=date[S5A2_2weekAfter[twentyMinIndex]],y=sens5[S5A2_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2 2 weeks after")
s5a2Figure <- ggarrange(s5a2b2,s5a2b1,s5a2,s5a2a1,s5a2a2)

#weeks before and after for sensor 5 accident 3
S5A3_2weekBefore = which(substr(date,1,10)=="2017-07-10")
S5A3_1weekBefore = which(substr(date,1,10)=="2017-07-17")
S5A3_1weekAfter = which(substr(date,1,10)=="2017-07-31")
S5A3_2weekAfter = which(substr(date,1,10)=="2017-08-07")

s5a3b2 <- ggplot() + geom_line(aes(x=date[S5A3_2weekBefore[twentyMinIndex]],y=sens5[S5A3_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3 2 weeks before")
s5a3b1 <- ggplot() + geom_line(aes(x=date[S5A3_1weekBefore[twentyMinIndex]],y=sens5[S5A3_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3 1 week before")
s5a3a1 <- ggplot() + geom_line(aes(x=date[S5A3_1weekAfter[twentyMinIndex]],y=sens5[S5A3_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3 1 week after")
s5a3a2 <- ggplot() + geom_line(aes(x=date[S5A3_2weekAfter[twentyMinIndex]],y=sens5[S5A3_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3 2 weeks after")
s5a3Figure <- ggarrange(s5a3b2,s5a3b1,s5a3,s5a3a1,s5a3a2)

#weeks before and after for sensor 5 accident 4
S5A4_2weekBefore = which(substr(date,1,10)=="2017-03-15")
S5A4_1weekBefore = which(substr(date,1,10)=="2017-03-22")
S5A4_1weekAfter = which(substr(date,1,10)=="2017-04-05")
S5A4_2weekAfter = which(substr(date,1,10)=="2017-04-12")

s5a4b2 <- ggplot() + geom_line(aes(x=date[S5A4_2weekBefore[twentyMinIndex]],y=sens5[S5A4_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4 2 weeks before")
s5a4b1 <- ggplot() + geom_line(aes(x=date[S5A4_1weekBefore[twentyMinIndex]],y=sens5[S5A4_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4 1 week before")
s5a4a1 <- ggplot() + geom_line(aes(x=date[S5A4_1weekAfter[twentyMinIndex]],y=sens5[S5A4_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4 1 week after")
s5a4a2 <- ggplot() + geom_line(aes(x=date[S5A4_2weekAfter[twentyMinIndex]],y=sens5[S5A4_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4 2 weeks after")
s5a4Figure <- ggarrange(s5a4b2,s5a4b1,s5a4,s5a4a1,s5a4a2)

#weeks before and after for sensor 10 accident 1
S10A1_2weekBefore = which(substr(date,1,10)=="2017-01-13")
S10A1_1weekBefore = which(substr(date,1,10)=="2017-01-20")
S10A1_1weekAfter = which(substr(date,1,10)=="2017-02-03")
S10A1_2weekAfter = which(substr(date,1,10)=="2017-02-10")

s10a1b2 <- ggplot() + geom_line(aes(x=date[S10A1_2weekBefore[twentyMinIndex]],y=sens10[S10A1_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1 2 weeks before")
s10a1b1 <- ggplot() + geom_line(aes(x=date[S10A1_1weekBefore[twentyMinIndex]],y=sens10[S10A1_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1 1 week before")
s10a1a1 <- ggplot() + geom_line(aes(x=date[S10A1_1weekAfter[twentyMinIndex]],y=sens10[S10A1_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1 1 week after")
s10a1a2 <- ggplot() + geom_line(aes(x=date[S10A1_2weekAfter[twentyMinIndex]],y=sens10[S10A1_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1 2 weeks after")
s10a1Figure <- ggarrange(s10a1b2,s10a1b1,s10a1,s10a1a1,s10a1a2)

#weeks before and after for sensor 10 accident 2
S10A2_2weekBefore = which(substr(date,1,10)=="2017-01-04")
S10A2_1weekBefore = which(substr(date,1,10)=="2017-01-11")
S10A2_1weekAfter = which(substr(date,1,10)=="2017-01-25")
S10A2_2weekAfter = which(substr(date,1,10)=="2017-02-08")

s10a2b2 <- ggplot() + geom_line(aes(x=date[S10A2_2weekBefore[twentyMinIndex]],y=sens10[S10A2_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2 2 weeks before")
s10a2b1 <- ggplot() + geom_line(aes(x=date[S10A2_1weekBefore[twentyMinIndex]],y=sens10[S10A2_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2 1 week before")
s10a2a1 <- ggplot() + geom_line(aes(x=date[S10A2_1weekAfter[twentyMinIndex]],y=sens10[S10A2_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2 1 week after")
s10a2a2 <- ggplot() + geom_line(aes(x=date[S10A2_2weekAfter[twentyMinIndex]],y=sens10[S10A2_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2 2 weeks after")
s10a2Figure <- ggarrange(s10a2b2,s10a2b1,s10a2,s10a2a1,s10a2a2)

#weeks before and after for sensor 10 accident 3
S10A3_2weekBefore = which(substr(date,1,10)=="2017-03-23")
S10A3_1weekBefore = which(substr(date,1,10)=="2017-03-30")
S10A3_1weekAfter = which(substr(date,1,10)=="2017-04-13")
S10A3_2weekAfter = which(substr(date,1,10)=="2017-04-20")

s10a3b2 <- ggplot() + geom_line(aes(x=date[S10A3_2weekBefore[twentyMinIndex]],y=sens10[S10A3_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3 2 weeks before")
s10a3b1 <- ggplot() + geom_line(aes(x=date[S10A3_1weekBefore[twentyMinIndex]],y=sens10[S10A3_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3 1 week before")
s10a3a1 <- ggplot() + geom_line(aes(x=date[S10A3_1weekAfter[twentyMinIndex]],y=sens10[S10A3_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3 1 week after")
s10a3a2 <- ggplot() + geom_line(aes(x=date[S10A3_2weekAfter[twentyMinIndex]],y=sens10[S10A3_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3 2 weeks after")
s10a3Figure <- ggarrange(s10a3b2,s10a3b1,s10a3,s10a3a1,s10a3a2)

#weeks before and after for sensor 10 accident 4
S10A4_2weekBefore = which(substr(date,1,10)=="2017-06-02")
S10A4_1weekBefore = which(substr(date,1,10)=="2017-06-09")
S10A4_1weekAfter = which(substr(date,1,10)=="2017-06-23")
S10A4_2weekAfter = which(substr(date,1,10)=="2017-06-30")

s10a4b2 <- ggplot() + geom_line(aes(x=date[S10A4_2weekBefore[twentyMinIndex]],y=sens10[S10A4_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4 2 weeks before")
s10a4b1 <- ggplot() + geom_line(aes(x=date[S10A4_1weekBefore[twentyMinIndex]],y=sens10[S10A4_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4 1 week before")
s10a4a1 <- ggplot() + geom_line(aes(x=date[S10A4_1weekAfter[twentyMinIndex]],y=sens10[S10A4_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4 1 week after")
s10a4a2 <- ggplot() + geom_line(aes(x=date[S10A4_2weekAfter[twentyMinIndex]],y=sens10[S10A4_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4 2 weeks after")
s10a4Figure <- ggarrange(s10a4b2,s10a4b1,s10a4,s10a4a1,s10a4a2)

#weeks before and after for sensor 10 accident 5
S10A5_2weekBefore = which(substr(date,1,10)=="2017-11-01")
S10A5_1weekBefore = which(substr(date,1,10)=="2017-11-08")
S10A5_1weekAfter = which(substr(date,1,10)=="2017-11-22")
S10A5_2weekAfter = which(substr(date,1,10)=="2017-11-29")

s10a5b2 <- ggplot() + geom_line(aes(x=date[S10A5_2weekBefore[twentyMinIndex]],y=sens10[S10A5_2weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5 2 weeks before")
s10a5b1 <- ggplot() + geom_line(aes(x=date[S10A5_1weekBefore[twentyMinIndex]],y=sens10[S10A5_1weekBefore[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5 1 week before")
s10a5a1 <- ggplot() + geom_line(aes(x=date[S10A5_1weekAfter[twentyMinIndex]],y=sens10[S10A5_1weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5 1 week after")
s10a5a2 <- ggplot() + geom_line(aes(x=date[S10A5_2weekAfter[twentyMinIndex]],y=sens10[S10A5_2weekAfter[twentyMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5 2 weeks after")
s10a5Figure <- ggarrange(s10a5b2,s10a5b1,s10a5,s10a5a1,s10a5a2)

#average of season and plot
S5A1season = list(sens5[S5A1_2weekAfter[twentyMinIndex]], sens5[S5A1_1weekAfter[twentyMinIndex]], sens5[S5A1_1weekBefore[twentyMinIndex]], sens5[S5A1_2weekBefore[twentyMinIndex]])
S5A2season = list(sens5[S5A2_2weekAfter[twentyMinIndex]], sens5[S5A2_1weekAfter[twentyMinIndex]], sens5[S5A2_1weekBefore[twentyMinIndex]], sens5[S5A2_2weekBefore[twentyMinIndex]])
S5A3season = list(sens5[S5A3_2weekAfter[twentyMinIndex]], sens5[S5A3_1weekAfter[twentyMinIndex]], sens5[S5A3_1weekBefore[twentyMinIndex]], sens5[S5A3_2weekBefore[twentyMinIndex]])
S5A4season = list(sens5[S5A4_2weekAfter[twentyMinIndex]], sens5[S5A4_1weekAfter[twentyMinIndex]], sens5[S5A4_1weekBefore[twentyMinIndex]], sens5[S5A4_2weekBefore[twentyMinIndex]])
S10A1season = list(sens10[S10A1_2weekAfter[twentyMinIndex]], sens10[S10A1_1weekAfter[twentyMinIndex]], sens10[S10A1_1weekBefore[twentyMinIndex]], sens10[S10A1_2weekBefore[twentyMinIndex]])
S10A2season = list(sens10[S10A2_2weekAfter[twentyMinIndex]], sens10[S10A2_1weekAfter[twentyMinIndex]], sens10[S10A2_1weekBefore[twentyMinIndex]], sens10[S10A2_2weekBefore[twentyMinIndex]])
S10A3season = list(sens10[S10A3_2weekAfter[twentyMinIndex]], sens10[S10A3_1weekAfter[twentyMinIndex]], sens10[S10A3_1weekBefore[twentyMinIndex]], sens10[S10A3_2weekBefore[twentyMinIndex]])
S10A4season = list(sens10[S10A4_2weekAfter[twentyMinIndex]], sens10[S10A4_1weekAfter[twentyMinIndex]], sens10[S10A4_1weekBefore[twentyMinIndex]], sens10[S10A4_2weekBefore[twentyMinIndex]])
S10A5season = list(sens10[S10A5_2weekAfter[twentyMinIndex]], sens10[S10A5_1weekAfter[twentyMinIndex]], sens10[S10A5_1weekBefore[twentyMinIndex]], sens10[S10A5_2weekBefore[twentyMinIndex]])

S5A1season_avg = rowMeans(simplify2array(S5A1season))
S5A2season_avg = rowMeans(simplify2array(S5A2season))
S5A3season_avg = rowMeans(simplify2array(S5A3season))
S5A4season_avg = rowMeans(simplify2array(S5A4season))
S10A1season_avg = rowMeans(simplify2array(S10A1season))
S10A2season_avg = rowMeans(simplify2array(S10A2season))
S10A3season_avg = rowMeans(simplify2array(S10A3season))
S10A4season_avg = rowMeans(simplify2array(S10A4season))
S10A5season_avg = rowMeans(simplify2array(S10A5season))

s5a1avg <- ggplot() + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=S5A1season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 Season Average")
s5a2avg <- ggplot() + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=S5A2season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2 Season Average")
s5a3avg <- ggplot() + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=S5A3season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3 Season Average")
s5a4avg <- ggplot() + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=S5A4season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4 Season Average")
s10a1avg <- ggplot() + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=S10A1season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1 Season Average")
s10a2avg <- ggplot() + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=S10A2season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2 Season Average")
s10a3avg <- ggplot() + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=S10A3season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3 Season Average")
s10a4avg <- ggplot() + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=S10A4season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4 Season Average")
s10a5avg <- ggplot() + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=S10A5season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5 Season Average")

s5a1_vs_avg <- ggarrange(s5a1,s5a1avg)
s5a2_vs_avg <- ggarrange(s5a2,s5a2avg)
s5a3_vs_avg <- ggarrange(s5a3,s5a3avg)
s5a4_vs_avg <- ggarrange(s5a4,s5a4avg)
s10a1_vs_avg <- ggarrange(s10a1,s10a1avg)
s10a2_vs_avg <- ggarrange(s10a2,s10a2avg)
s10a3_vs_avg <- ggarrange(s10a3,s10a3avg)
s10a4_vs_avg <- ggarrange(s10a4,s10a4avg)
s10a5_vs_avg <- ggarrange(s10a5,s10a5avg)

#plotting
s5a1Figure
s5a1_vs_avg
s5a2Figure
s5a2_vs_avg
s5a3Figure
s5a3_vs_avg
s5a4Figure
s5a4_vs_avg
s10a1Figure
s10a1_vs_avg
s10a2Figure
s10a2_vs_avg
s10a3Figure
s10a3_vs_avg
s10a4Figure
s10a4_vs_avg
s10a5Figure
s10a5_vs_avg

#plotting before, after, and day of on top of each other
s5a1season <- s5a1 + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=sens5[S5A1_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=sens5[S5A1_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=sens5[S5A1_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S5A1[twentyMinIndex]],y=sens5[S5A1_2weekAfter[twentyMinIndex]]))
s5a2season <- s5a2 + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=sens5[S5A2_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=sens5[S5A2_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=sens5[S5A2_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S5A2[twentyMinIndex]],y=sens5[S5A2_2weekAfter[twentyMinIndex]]))
s5a3season <- s5a3 + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=sens5[S5A3_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=sens5[S5A3_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=sens5[S5A3_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S5A3[twentyMinIndex]],y=sens5[S5A3_2weekAfter[twentyMinIndex]]))
s5a4season <- s5a4 + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=sens5[S5A4_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=sens5[S5A4_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=sens5[S5A4_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S5A4[twentyMinIndex]],y=sens5[S5A4_2weekAfter[twentyMinIndex]]))
s10a1season <- s10a1 + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=sens10[S10A1_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=sens10[S10A1_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=sens10[S10A1_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S10A1[twentyMinIndex]],y=sens10[S10A1_2weekAfter[twentyMinIndex]]))
s10a2season <- s10a2 + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=sens10[S10A2_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=sens10[S10A2_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=sens10[S10A2_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S10A2[twentyMinIndex]],y=sens10[S10A2_2weekAfter[twentyMinIndex]]))
s10a3season <- s10a3 + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=sens10[S10A3_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=sens10[S10A3_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=sens10[S10A3_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S10A3[twentyMinIndex]],y=sens10[S10A3_2weekAfter[twentyMinIndex]]))
s10a4season <- s10a4 + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=sens10[S10A4_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=sens10[S10A4_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=sens10[S10A4_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S10A4[twentyMinIndex]],y=sens10[S10A4_2weekAfter[twentyMinIndex]]))
s10a5season <- s10a5 + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=sens10[S10A5_2weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=sens10[S10A5_1weekBefore[twentyMinIndex]])) + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=sens10[S10A5_1weekAfter[twentyMinIndex]])) + geom_line(aes(x=date[S10A5[twentyMinIndex]],y=sens10[S10A5_2weekAfter[twentyMinIndex]]))


s5a1season
s5a2season
s5a3season
s5a4season
s10a1season
s10a2season
s10a3season
s10a4season
s10a5season

#calculate standard deviation for season
install.packages("matrixStats")
library(matrixStats)
season_sd = rowSds(simplify2array(season))
print(season_sd)
