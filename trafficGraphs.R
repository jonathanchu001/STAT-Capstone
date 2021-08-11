load("~/R Code/TrafficChallenge2 .Rdata")
library(lubridate)
library(ggplot2)


timeStrings = substr(TrafficData[,1],1,16)

date = ymd_hm(timeStrings)


#date of each sensor
sens1 = TrafficData[,2]
sens2 = TrafficData[,3]
sens3 = TrafficData[,4]
sens4 = TrafficData[,5]
sens5 = TrafficData[,6]
sens6 = TrafficData[,7]
sens7 = TrafficData[,8]
sens8 = TrafficData[,9]
sens9 = TrafficData[,10]
sens10 = TrafficData[,11]

#removing NA values in each sensor
sens1na = which(is.na(sens1))
sens2na = which(is.na(sens2))
sens3na = which(is.na(sens3))
sens4na = which(is.na(sens4))
sens5na = which(is.na(sens5))
sens6na = which(is.na(sens6))
sens7na = which(is.na(sens7))
sens8na = which(is.na(sens8))
sens9na = which(is.na(sens9))
sens10na = which(is.na(sens10))

##testing ggplot for time series of each sensor for entire year, commented out sensors other than 5 and 10
#ggplot() + geom_line(aes(x=date[-c(sens1na)],y=sens1[-c(sens1na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens2na)],y=sens2[-c(sens2na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens3na)],y=sens3[-c(sens3na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens4na)],y=sens4[-c(sens4na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Plot")
ggplot() + geom_line(aes(x=date[-c(sens5na)],y=sens5[-c(sens5na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens6na)],y=sens6[-c(sens6na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens7na)],y=sens7[-c(sens7na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens8na)],y=sens8[-c(sens8na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Plot")
#ggplot() + geom_line(aes(x=date[-c(sens9na)],y=sens9[-c(sens9na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Plot")
ggplot() + geom_line(aes(x=date[-c(sens10na)],y=sens10[-c(sens10na)])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Plot")

#index to get every 10 minutes of ONE day (288 indexes per day, every other gives 144)
tenMinIndex = seq(1,287,2)

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
ggplot() + geom_line(aes(x=date[S5A1[tenMinIndex]],y=sens5[S5A1[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1") + geom_vline(xintercept = ymd_hm("2017-02-06 08:10"),colour="red")
ggplot() + geom_line(aes(x=date[S5A2[tenMinIndex]],y=sens5[S5A2[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 2") + geom_vline(xintercept = ymd_hm("2017-10-07 17:47"),colour="red")
ggplot() + geom_line(aes(x=date[S5A3[tenMinIndex]],y=sens5[S5A3[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 3") + geom_vline(xintercept = ymd_hm("2017-07-24 12:12"),colour="red")
ggplot() + geom_line(aes(x=date[S5A4[tenMinIndex]],y=sens5[S5A4[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 4") + geom_vline(xintercept = ymd_hm("2017-03-29 08:25"),colour="red")
ggplot() + geom_line(aes(x=date[S10A1[tenMinIndex]],y=sens10[S10A1[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 1") + geom_vline(xintercept = ymd_hm("2017-01-27 20:34"),colour="red")
ggplot() + geom_line(aes(x=date[S10A2[tenMinIndex]],y=sens10[S10A2[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 2") + geom_vline(xintercept = ymd_hm("2017-01-18 14:23"),colour="red")
ggplot() + geom_line(aes(x=date[S10A3[tenMinIndex]],y=sens10[S10A3[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 3") + geom_vline(xintercept = ymd_hm("2017-04-06 16:33"),colour="red")
ggplot() + geom_line(aes(x=date[S10A4[tenMinIndex]],y=sens10[S10A4[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 4") + geom_vline(xintercept = ymd_hm("2017-06-16 06:34"),colour="red")
ggplot() + geom_line(aes(x=date[S10A5[tenMinIndex]],y=sens10[S10A5[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Accident 5") + geom_vline(xintercept = ymd_hm("2017-11-15 17:15"),colour="red")

#getting the weeks before and after for sensor 5 accident 1
S5A1_3weekBefore = which(substr(date,1,10)=="2017-01-16")
S5A1_2weekBefore = which(substr(date,1,10)=="2017-01-23")
S5A1_1weekBefore = which(substr(date,1,10)=="2017-01-30")
S5A1_1weekAfter = which(substr(date,1,10)=="2017-02-13")
S5A1_2weekAfter = which(substr(date,1,10)=="2017-02-20")
S5A1_3weekAfter = which(substr(date,1,10)=="2017-02-27")

ggplot() + geom_line(aes(x=date[S5A1_3weekBefore[tenMinIndex]],y=sens5[S5A1_3weekBefore[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 3 weeks before")
ggplot() + geom_line(aes(x=date[S5A1_2weekBefore[tenMinIndex]],y=sens5[S5A1_2weekBefore[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 2 weeks before")
ggplot() + geom_line(aes(x=date[S5A1_1weekBefore[tenMinIndex]],y=sens5[S5A1_1weekBefore[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 1 week before")
ggplot() + geom_line(aes(x=date[S5A1[tenMinIndex]],y=sens5[S5A1[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1") + geom_vline(xintercept = ymd_hm("2017-02-06 08:10"),colour="red")
ggplot() + geom_line(aes(x=date[S5A1_1weekAfter[tenMinIndex]],y=sens5[S5A1_1weekAfter[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 1 week after")
ggplot() + geom_line(aes(x=date[S5A1_2weekAfter[tenMinIndex]],y=sens5[S5A1_2weekAfter[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 2 weeks after")
ggplot() + geom_line(aes(x=date[S5A1_3weekAfter[tenMinIndex]],y=sens5[S5A1_3weekAfter[tenMinIndex]])) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 3 weeks after")

#average of season and plot
season = list(sens10[S5A1_3weekAfter[tenMinIndex]], sens10[S5A1_2weekAfter[tenMinIndex]], sens10[S5A1_1weekAfter[tenMinIndex]], sens10[S5A1_1weekBefore[tenMinIndex]], sens10[S5A1_2weekBefore[tenMinIndex]], sens10[S5A1_3weekBefore[tenMinIndex]])
season_avg = rowMeans(simplify2array(season))

ggplot() + geom_line(aes(x=date[S5A1[tenMinIndex]],y=season_avg)) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Accident 1 Season")
