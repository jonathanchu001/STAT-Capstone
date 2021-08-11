load("~/R Code/TrafficChallenge2 .Rdata")
library(lubridate)
library(ggplot2)
library(ggpubr)
library(fda)

timeStrings = substr(TrafficData[,1],1,16)

date = ymd_hm(timeStrings)

#dates not including day of daylight savings
noSavingsDate = date[which(substr(date,1,10)!="2017-03-12")]

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


#getting holidays
H1 = which(substr(date,1,10)=="2017-01-02")
H2 = which(substr(date,1,10)=="2017-01-16")
H3 = which(substr(date,1,10)=="2017-02-05")
H4 = which(substr(date,1,10)=="2017-02-20")
H5 = which(substr(date,1,10)=="2017-05-29")
H6 = which(substr(date,1,10)=="2017-07-04")
H7 = which(substr(date,1,10)=="2017-09-04")
H8 = which(substr(date,1,10)=="2017-11-23")
H9 = which(substr(date,1,10)=="2017-11-24")
H10 = which(substr(date,1,10)=="2017-12-25")



#get different days of the week
Mondays = which(wday(date)==2)
Tuesdays = which(wday(date)==3)
Thursdays = which(wday(date)==5)
Fridays = which(wday(date)==6)
Sundays = which(wday(date)==1)

#removing day of daylight savings on march 12th so that all days have 288 time points
SundaysNoSavings = which(wday(noSavingsDate)==1)

#list of times
times = hm(substr(date[H1],12,16))

#plots of the corresponding holidays
S1H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens1[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 New Year's Day")
S1H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens1[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 MLK Day")
S1H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens1[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Superbowl Sunday")
S1H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens1[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 President's Day")
S1H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens1[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Memorial Day")
S1H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens1[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Independence Day")
S1H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens1[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Labor Day")
S1H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens1[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Thanksgiving Day")
S1H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens1[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Day After Thanksgiving")
S1H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens1[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Christmas Day")

S2H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens2[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 New Year's Day")
S2H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens2[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 MLK Day")
S2H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens2[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Superbowl Sunday")
S2H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens2[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 President's Day")
S2H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens2[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Memorial Day")
S2H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens2[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Independence Day")
S2H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens2[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Labor Day")
S2H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens2[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Thanksgiving Day")
S2H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens2[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Day After Thanksgiving")
S2H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens2[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Christmas Day")

S3H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens3[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 New Year's Day")
S3H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens3[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 MLK Day")
S3H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens3[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Superbowl Sunday")
S3H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens3[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 President's Day")
S3H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens3[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Memorial Day")
S3H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens3[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Independence Day")
S3H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens3[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Labor Day")
S3H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens3[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Thanksgiving Day")
S3H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens3[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Day After Thanksgiving")
S3H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens3[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Christmas Day")

S4H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens4[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 New Year's Day")
S4H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens4[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 MLK Day")
S4H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens4[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Superbowl Sunday")
S4H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens4[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 President's Day")
S4H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens4[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Memorial Day")
S4H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens4[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Independence Day")
S4H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens4[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Labor Day")
S4H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens4[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Thanksgiving Day")
S4H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens4[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Day After Thanksgiving")
S4H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens4[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Christmas Day")

S5H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens5[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 New Year's Day")
S5H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens5[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 MLK Day")
S5H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens5[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Superbowl Sunday")
S5H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens5[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 President's Day")
S5H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens5[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Memorial Day")
S5H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens5[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Independence Day")
S5H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens5[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Labor Day")
S5H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens5[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Thanksgiving Day")
S5H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens5[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Day After Thanksgiving")
S5H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens5[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Christmas Day")

S6H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens6[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 New Year's Day")
S6H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens6[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 MLK Day")
S6H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens6[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Superbowl Sunday")
S6H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens6[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 President's Day")
S6H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens6[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Memorial Day")
S6H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens6[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Independence Day")
S6H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens6[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Labor Day")
S6H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens6[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Thanksgiving Day")
S6H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens6[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Day After Thanksgiving")
S6H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens6[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Christmas Day")

S7H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens7[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 New Year's Day")
S7H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens7[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 MLK Day")
S7H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens7[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Superbowl Sunday")
S7H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens7[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 President's Day")
S7H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens7[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Memorial Day")
S7H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens7[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Independence Day")
S7H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens7[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Labor Day")
S7H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens7[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Thanksgiving Day")
S7H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens7[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Day After Thanksgiving")
S7H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens7[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Christmas Day")

S8H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens8[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 New Year's Day")
S8H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens8[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 MLK Day")
S8H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens8[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Superbowl Sunday")
S8H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens8[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 President's Day")
S8H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens8[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Memorial Day")
S8H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens8[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Independence Day")
S8H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens8[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Labor Day")
S8H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens8[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Thanksgiving Day")
S8H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens8[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Day After Thanksgiving")
S8H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens8[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Christmas Day")

S9H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens9[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 New Year's Day")
S9H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens9[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 MLK Day")
S9H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens9[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Superbowl Sunday")
S9H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens9[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 President's Day")
S9H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens9[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Memorial Day")
S9H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens9[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Independence Day")
S9H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens9[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Labor Day")
S9H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens9[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Thanksgiving Day")
S9H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens9[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Day After Thanksgiving")
S9H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens9[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Christmas Day")

S10H1 <- ggplot() + geom_line(aes(x=date[H1],y=sens10[H1],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 New Year's Day")
S10H2 <- ggplot() + geom_line(aes(x=date[H2],y=sens10[H2],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 MLK Day")
S10H3 <- ggplot() + geom_line(aes(x=date[H3],y=sens10[H3],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Superbowl Sunday")
S10H4 <- ggplot() + geom_line(aes(x=date[H4],y=sens10[H4],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 President's Day")
S10H5 <- ggplot() + geom_line(aes(x=date[H5],y=sens10[H5],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Memorial Day")
S10H6 <- ggplot() + geom_line(aes(x=date[H6],y=sens10[H6],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Independence Day")
S10H7 <- ggplot() + geom_line(aes(x=date[H7],y=sens10[H7],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Labor Day")
S10H8 <- ggplot() + geom_line(aes(x=date[H8],y=sens10[H8],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Thanksgiving Day")
S10H9 <- ggplot() + geom_line(aes(x=date[H9],y=sens10[H9],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Day After Thanksgiving")
S10H10 <- ggplot() + geom_line(aes(x=date[H10],y=sens10[H10],col="Holiday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Christmas Day")

S1Holidays <- ggarrange(S1H1,S1H2,S1H3,S1H4,S1H5,S1H6,S1H7,S1H8,S1H9,S1H10)
S2Holidays <- ggarrange(S2H1,S2H2,S2H3,S2H4,S2H5,S2H6,S2H7,S2H8,S2H9,S2H10)
S3Holidays <- ggarrange(S3H1,S3H2,S3H3,S3H4,S3H5,S3H6,S3H7,S3H8,S3H9,S3H10)
S4Holidays <- ggarrange(S4H1,S4H2,S4H3,S4H4,S4H5,S4H6,S4H7,S4H8,S4H9,S4H10)
S5Holidays <- ggarrange(S5H1,S5H2,S5H3,S5H4,S5H5,S5H6,S5H7,S5H8,S5H9,S5H10)
S6Holidays <- ggarrange(S6H1,S6H2,S6H3,S6H4,S6H5,S6H6,S6H7,S6H8,S6H9,S6H10)
S7Holidays <- ggarrange(S7H1,S7H2,S7H3,S7H4,S7H5,S7H6,S7H7,S7H8,S7H9,S7H10)
S8Holidays <- ggarrange(S8H1,S8H2,S8H3,S8H4,S8H5,S8H6,S8H7,S8H8,S8H9,S8H10)
S9Holidays <- ggarrange(S9H1,S9H2,S9H3,S9H4,S9H5,S9H6,S9H7,S9H8,S9H9,S9H10)
S10Holidays <- ggarrange(S10H1,S10H2,S10H3,S10H4,S10H5,S10H6,S10H7,S10H8,S10H9,S10H10)

##plotting sensor holidays vs averages
#For Sensor 1
S1MondayAvgs = rep(NA,288)
for(i in seq(length(S1MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S1MondayAvgs[i]=mean(sens1[index])
}

S1TuesdayAvgs = rep(NA,288)
for(i in seq(length(S1TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S1TuesdayAvgs[i]=mean(sens1[index])
}

S1ThursdayAvgs = rep(NA,288)
for(i in seq(length(S1ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S1ThursdayAvgs[i]=mean(sens1[index])
}
S1FridayAvgs = rep(NA,288)
for(i in seq(length(S1FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S1FridayAvgs[i]=mean(sens1[index])
}
S1SundayAvgs = rep(NA,288)
for(i in seq(length(S1SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S1SundayAvgs[i]=mean(sens1[index])
}

S1H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens1[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S1MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 New Year's Day vs Average Monday")
S1H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens1[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 MLK Day vs Average Monday")
S1H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens1[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S1SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Superbowl Sunday vs Average Sunday")
S1H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens1[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 President's Day vs Average Monday")
S1H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens1[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Memorial Day vs Average Monday")
S1H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens1[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S1TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Independence Day vs Average Tuesday")
S1H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens1[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Labor Day vs Average Monday")
S1H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens1[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S1ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Thanksgiving Day vs Average Thursday")
S1H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens1[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S1FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Day After Thanksgiving vs Average Friday")
S1H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens1[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 1 Christmas Day vs Average Monday")

S1H1vsAvg
S1H2vsAvg
S1H3vsAvg
S1H4vsAvg
S1H5vsAvg
S1H6vsAvg
S1H7vsAvg
S1H8vsAvg
S1H9vsAvg
S1H10vsAvg

#for Sensor 2
S2MondayAvgs = rep(NA,288)
for(i in seq(length(S2MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S2MondayAvgs[i]=mean(sens2[index])
}

S2TuesdayAvgs = rep(NA,288)
for(i in seq(length(S2TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S2TuesdayAvgs[i]=mean(sens2[index])
}

S2ThursdayAvgs = rep(NA,288)
for(i in seq(length(S2ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S2ThursdayAvgs[i]=mean(sens2[index])
}
S2FridayAvgs = rep(NA,288)
for(i in seq(length(S2FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S2FridayAvgs[i]=mean(sens2[index])
}
S2SundayAvgs = rep(NA,288)
for(i in seq(length(S2SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S2SundayAvgs[i]=mean(sens2[index])
}

S2H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens2[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S2MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 New Year's Day vs Average Monday")
S2H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens2[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 MLK Day vs Average Monday")
S2H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens2[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S2SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Superbowl Sunday vs Average Sunday")
S2H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens2[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 President's Day vs Average Monday")
S2H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens2[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Memorial Day vs Average Monday")
S2H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens2[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S2TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Independence Day vs Average Tuesday")
S2H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens2[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Labor Day vs Average Monday")
S2H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens2[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S2ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Thanksgiving Day vs Average Thursday")
S2H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens2[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S2FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Day After Thanksgiving vs Average Friday")
S2H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens2[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 2 Christmas Day vs Average Monday")

S2H1vsAvg
S2H2vsAvg
S2H3vsAvg
S2H4vsAvg
S2H5vsAvg
S2H6vsAvg
S2H7vsAvg
S2H8vsAvg
S2H9vsAvg
S2H10vsAvg

#for Sensor 3
S3MondayAvgs = rep(NA,288)
for(i in seq(length(S3MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S3MondayAvgs[i]=mean(sens3[index])
}

S3TuesdayAvgs = rep(NA,288)
for(i in seq(length(S3TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S3TuesdayAvgs[i]=mean(sens3[index])
}

S3ThursdayAvgs = rep(NA,288)
for(i in seq(length(S3ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S3ThursdayAvgs[i]=mean(sens3[index])
}
S3FridayAvgs = rep(NA,288)
for(i in seq(length(S3FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S3FridayAvgs[i]=mean(sens3[index])
}
S3SundayAvgs = rep(NA,288)
for(i in seq(length(S3SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S3SundayAvgs[i]=mean(sens3[index])
}

S3H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens3[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S3MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 New Year's Day vs Average Monday")
S3H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens3[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 MLK Day vs Average Monday")
S3H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens3[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S3SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Superbowl Sunday vs Average Sunday")
S3H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens3[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 President's Day vs Average Monday")
S3H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens3[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Memorial Day vs Average Monday")
S3H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens3[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S3TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Independence Day vs Average Tuesday")
S3H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens3[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Labor Day vs Average Monday")
S3H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens3[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S3ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Thanksgiving Day vs Average Thursday")
S3H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens3[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S3FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Day After Thanksgiving vs Average Friday")
S3H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens3[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 3 Christmas Day vs Average Monday")

S3H1vsAvg
S3H2vsAvg
S3H3vsAvg
S3H4vsAvg
S3H5vsAvg
S3H6vsAvg
S3H7vsAvg
S3H8vsAvg
S3H9vsAvg
S3H10vsAvg

#for Sensor 4
S4MondayAvgs = rep(NA,288)
for(i in seq(length(S4MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S4MondayAvgs[i]=mean(sens4[index])
}

S4TuesdayAvgs = rep(NA,288)
for(i in seq(length(S4TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S4TuesdayAvgs[i]=mean(sens4[index])
}

S4ThursdayAvgs = rep(NA,288)
for(i in seq(length(S4ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S4ThursdayAvgs[i]=mean(sens4[index])
}
S4FridayAvgs = rep(NA,288)
for(i in seq(length(S4FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S4FridayAvgs[i]=mean(sens4[index])
}
S4SundayAvgs = rep(NA,288)
for(i in seq(length(S4SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S4SundayAvgs[i]=mean(sens4[index])
}

S4H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens4[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S4MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 New Year's Day vs Average Monday")
S4H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens4[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 MLK Day vs Average Monday")
S4H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens4[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S4SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Superbowl Sunday vs Average Sunday")
S4H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens4[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 President's Day vs Average Monday")
S4H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens4[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Memorial Day vs Average Monday")
S4H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens4[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S4TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Independence Day vs Average Tuesday")
S4H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens4[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Labor Day vs Average Monday")
S4H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens4[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S4ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Thanksgiving Day vs Average Thursday")
S4H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens4[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S4FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Day After Thanksgiving vs Average Friday")
S4H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens4[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 4 Christmas Day vs Average Monday")

S4H1vsAvg
S4H2vsAvg
S4H3vsAvg
S4H4vsAvg
S4H5vsAvg
S4H6vsAvg
S4H7vsAvg
S4H8vsAvg
S4H9vsAvg
S4H10vsAvg

#for Sensor 5
S5MondayAvgs = rep(NA,288)
for(i in seq(length(S5MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S5MondayAvgs[i]=mean(sens5[index])
}

S5TuesdayAvgs = rep(NA,288)
for(i in seq(length(S5TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S5TuesdayAvgs[i]=mean(sens5[index])
}

S5ThursdayAvgs = rep(NA,288)
for(i in seq(length(S5ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S5ThursdayAvgs[i]=mean(sens5[index])
}
S5FridayAvgs = rep(NA,288)
for(i in seq(length(S5FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S5FridayAvgs[i]=mean(sens5[index])
}
S5SundayAvgs = rep(NA,288)
for(i in seq(length(S5SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S5SundayAvgs[i]=mean(sens5[index])
}

S5H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens5[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S5MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 New Year's Day vs Average Monday")
S5H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens5[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 MLK Day vs Average Monday")
S5H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens5[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S5SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Superbowl Sunday vs Average Sunday")
S5H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens5[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 President's Day vs Average Monday")
S5H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens5[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Memorial Day vs Average Monday")
S5H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens5[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S5TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Independence Day vs Average Tuesday")
S5H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens5[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Labor Day vs Average Monday")
S5H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens5[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S5ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Thanksgiving Day vs Average Thursday")
S5H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens5[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S5FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Day After Thanksgiving vs Average Friday")
S5H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens5[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 5 Christmas Day vs Average Monday")

S5H1vsAvg
S5H2vsAvg
S5H3vsAvg
S5H4vsAvg
S5H5vsAvg
S5H6vsAvg
S5H7vsAvg
S5H8vsAvg
S5H9vsAvg
S5H10vsAvg

#for Sensor 6
S6MondayAvgs = rep(NA,288)
for(i in seq(length(S6MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S6MondayAvgs[i]=mean(sens6[index])
}

S6TuesdayAvgs = rep(NA,288)
for(i in seq(length(S6TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S6TuesdayAvgs[i]=mean(sens6[index])
}

S6ThursdayAvgs = rep(NA,288)
for(i in seq(length(S6ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S6ThursdayAvgs[i]=mean(sens6[index])
}
S6FridayAvgs = rep(NA,288)
for(i in seq(length(S6FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S6FridayAvgs[i]=mean(sens6[index])
}
S6SundayAvgs = rep(NA,288)
for(i in seq(length(S6SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S6SundayAvgs[i]=mean(sens6[index])
}

S6H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens6[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S6MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 New Year's Day vs Average Monday")
S6H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens6[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 MLK Day vs Average Monday")
S6H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens6[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S6SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Superbowl Sunday vs Average Sunday")
S6H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens6[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 President's Day vs Average Monday")
S6H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens6[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Memorial Day vs Average Monday")
S6H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens6[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S6TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Independence Day vs Average Tuesday")
S6H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens6[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Labor Day vs Average Monday")
S6H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens6[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S6ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Thanksgiving Day vs Average Thursday")
S6H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens6[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S6FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Day After Thanksgiving vs Average Friday")
S6H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens6[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 6 Christmas Day vs Average Monday")

S6H1vsAvg
S6H2vsAvg
S6H3vsAvg
S6H4vsAvg
S6H5vsAvg
S6H6vsAvg
S6H7vsAvg
S6H8vsAvg
S6H9vsAvg
S6H10vsAvg

##For Sensor 7
S7MondayAvgs = rep(NA,288)
for(i in seq(length(S7MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S7MondayAvgs[i]=mean(sens7[index])
}

S7TuesdayAvgs = rep(NA,288)
for(i in seq(length(S7TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S7TuesdayAvgs[i]=mean(sens7[index])
}

S7ThursdayAvgs = rep(NA,288)
for(i in seq(length(S7ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S7ThursdayAvgs[i]=mean(sens7[index])
}
S7FridayAvgs = rep(NA,288)
for(i in seq(length(S7FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S7FridayAvgs[i]=mean(sens7[index])
}
S7SundayAvgs = rep(NA,288)
for(i in seq(length(S7SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S7SundayAvgs[i]=mean(sens7[index])
}

S7H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens7[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S7MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 New Year's Day vs Average Monday")
S7H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens7[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 MLK Day vs Average Monday")
S7H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens7[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S7SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Superbowl Sunday vs Average Sunday")
S7H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens7[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 President's Day vs Average Monday")
S7H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens7[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Memorial Day vs Average Monday")
S7H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens7[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S7TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Independence Day vs Average Tuesday")
S7H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens7[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Labor Day vs Average Monday")
S7H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens7[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S7ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Thanksgiving Day vs Average Thursday")
S7H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens7[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S7FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Day After Thanksgiving vs Average Friday")
S7H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens7[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 7 Christmas Day vs Average Monday")

S7H1vsAvg
S7H2vsAvg
S7H3vsAvg
S7H4vsAvg
S7H5vsAvg
S7H6vsAvg
S7H7vsAvg
S7H8vsAvg
S7H9vsAvg
S7H10vsAvg

#for Sensor 8
S8MondayAvgs = rep(NA,288)
for(i in seq(length(S8MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S8MondayAvgs[i]=mean(sens8[index])
}

S8TuesdayAvgs = rep(NA,288)
for(i in seq(length(S8TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S8TuesdayAvgs[i]=mean(sens8[index])
}

S8ThursdayAvgs = rep(NA,288)
for(i in seq(length(S8ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S8ThursdayAvgs[i]=mean(sens8[index])
}
S8FridayAvgs = rep(NA,288)
for(i in seq(length(S8FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S8FridayAvgs[i]=mean(sens8[index])
}
S8SundayAvgs = rep(NA,288)
for(i in seq(length(S8SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S8SundayAvgs[i]=mean(sens8[index])
}

S8H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens8[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S8MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 New Year's Day vs Average Monday")
S8H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens8[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 MLK Day vs Average Monday")
S8H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens8[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S8SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Superbowl Sunday vs Average Sunday")
S8H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens8[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 President's Day vs Average Monday")
S8H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens8[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Memorial Day vs Average Monday")
S8H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens8[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S8TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Independence Day vs Average Tuesday")
S8H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens8[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Labor Day vs Average Monday")
S8H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens8[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S8ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Thanksgiving Day vs Average Thursday")
S8H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens8[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S8FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Day After Thanksgiving vs Average Friday")
S8H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens8[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 8 Christmas Day vs Average Monday")

S8H1vsAvg
S8H2vsAvg
S8H3vsAvg
S8H4vsAvg
S8H5vsAvg
S8H6vsAvg
S8H7vsAvg
S8H8vsAvg
S8H9vsAvg
S8H10vsAvg

#for Sensor 9
S9MondayAvgs = rep(NA,288)
for(i in seq(length(S9MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S9MondayAvgs[i]=mean(sens9[index])
}

S9TuesdayAvgs = rep(NA,288)
for(i in seq(length(S9TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S9TuesdayAvgs[i]=mean(sens9[index])
}

S9ThursdayAvgs = rep(NA,288)
for(i in seq(length(S9ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S9ThursdayAvgs[i]=mean(sens9[index])
}
S9FridayAvgs = rep(NA,288)
for(i in seq(length(S9FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S9FridayAvgs[i]=mean(sens9[index])
}
S9SundayAvgs = rep(NA,288)
for(i in seq(length(S9SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S9SundayAvgs[i]=mean(sens9[index])
}

S9H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens9[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S9MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 New Year's Day vs Average Monday")
S9H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens9[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 MLK Day vs Average Monday")
S9H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens9[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S9SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Superbowl Sunday vs Average Sunday")
S9H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens9[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 President's Day vs Average Monday")
S9H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens9[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Memorial Day vs Average Monday")
S9H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens9[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S9TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Independence Day vs Average Tuesday")
S9H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens9[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Labor Day vs Average Monday")
S9H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens9[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S9ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Thanksgiving Day vs Average Thursday")
S9H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens9[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S9FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Day After Thanksgiving vs Average Friday")
S9H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens9[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 9 Christmas Day vs Average Monday")

S9H1vsAvg
S9H2vsAvg
S9H3vsAvg
S9H4vsAvg
S9H5vsAvg
S9H6vsAvg
S9H7vsAvg
S9H8vsAvg
S9H9vsAvg
S9H10vsAvg

#For Sensor 10
S10MondayAvgs = rep(NA,288)
for(i in seq(length(S10MondayAvgs))) {
  index = Mondays[seq(i,length(Mondays),288)]
  S10MondayAvgs[i]=mean(sens10[index])
}

S10TuesdayAvgs = rep(NA,288)
for(i in seq(length(S10TuesdayAvgs))) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S10TuesdayAvgs[i]=mean(sens10[index])
}

S10ThursdayAvgs = rep(NA,288)
for(i in seq(length(S10ThursdayAvgs))) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S10ThursdayAvgs[i]=mean(sens10[index])
}
S10FridayAvgs = rep(NA,288)
for(i in seq(length(S10FridayAvgs))) {
  index = Fridays[seq(i,length(Fridays),288)]
  S10FridayAvgs[i]=mean(sens10[index])
}
S10SundayAvgs = rep(NA,288)
for(i in seq(length(S10SundayAvgs))) {
  index = Sundays[seq(i,length(Sundays),288)]
  S10SundayAvgs[i]=mean(sens10[index])
}

S10H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens10[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S10MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 New Year's Day vs Average Monday")
S10H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens10[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 MLK Day vs Average Monday")
S10H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens10[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S10SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Superbowl Sunday vs Average Sunday")
S10H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens10[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 President's Day vs Average Monday")
S10H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens10[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Memorial Day vs Average Monday")
S10H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens10[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S10TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Independence Day vs Average Tuesday")
S10H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens10[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Labor Day vs Average Monday")
S10H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens10[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S10ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Thanksgiving Day vs Average Thursday")
S10H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens10[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S10FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Day After Thanksgiving vs Average Friday")
S10H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens10[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Sensor 10 Christmas Day vs Average Monday")

S10H1vsAvg
S10H2vsAvg
S10H3vsAvg
S10H4vsAvg
S10H5vsAvg
S10H6vsAvg
S10H7vsAvg
S10H8vsAvg
S10H9vsAvg
S10H10vsAvg

##For functional Data Analysis

p = 288
n = 52

#################################################
#For sensor 1
S1Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S1Mondays = rbind(S1Mondays,sens1[index])
}
S1Mondays = S1Mondays[2:289,]


S1Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S1Tuesdays = rbind(S1Tuesdays,sens1[index])
}
S1Tuesdays = S1Tuesdays[2:289,]

S1Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S1Thursdays = rbind(S1Thursdays,sens1[index])
}
S1Thursdays = S1Thursdays[2:289,]

S1Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S1Fridays = rbind(S1Fridays,sens1[index])
}
S1Fridays = S1Fridays[2:289,]



S1Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S1Sundays = rbind(S1Sundays,sens1[index])
}
S1Sundays = S1Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 36 was correctly identified with this fbplot
matplot(S1Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 1 All Mondays")
fbplot(S1Mondays,method='MBD',main="Sensor 1 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#27 is a holiday and matches with fbplot
matplot(S1Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 1 All Tuesdays")
fbplot(S1Tuesdays,method='MBD',main="Sensor 1 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#47 is a holiday and was not identified
matplot(S1Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 1 All Thursdays")
fbplot(S1Thursdays,method='MBD',main="Sensor 1 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#47 is a holiday and was not identified
matplot(S1Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 1 All Fridays")
fbplot(S1Fridays,method='MBD',main="Sensor 1 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#6 is a holiday and was not identified
matplot(S1Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 1 All Sundays")
fbplot(S1Sundays,method='MBD',main="Sensor 1 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))


#################################################
#For sensor 2
S2Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S2Mondays = rbind(S2Mondays,sens2[index])
}
S2Mondays = S2Mondays[2:289,]


S2Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S2Tuesdays = rbind(S2Tuesdays,sens2[index])
}
S2Tuesdays = S2Tuesdays[2:289,]

S2Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S2Thursdays = rbind(S2Thursdays,sens2[index])
}
S2Thursdays = S2Thursdays[2:289,]

S2Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S2Fridays = rbind(S2Fridays,sens2[index])
}
S2Fridays = S2Fridays[2:289,]



S2Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S2Sundays = rbind(S2Sundays,sens2[index])
}
S2Sundays = S2Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1, 22, 36, and 52 were correclty identified
matplot(S2Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 2 All Mondays")
fbplot(S2Mondays,method='MBD',main="Sensor 2 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#27 is a holiday and matches with fbplot
matplot(S2Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 2 All Tuesdays")
fbplot(S2Tuesdays,method='MBD',main="Sensor 2 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#47 is a holiday and matches with fbplot
matplot(S2Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 2 All Thursdays")
fbplot(S2Thursdays,method='MBD',main="Sensor 2 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#47 is a holiday and matches with fbplot
matplot(S2Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 2 All Fridays")
fbplot(S2Fridays,method='MBD',main="Sensor 2 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))

#6 is a holiday and matches with fbplot
matplot(S2Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 2 All Sundays")
fbplot(S2Sundays,method='MBD',main="Sensor 2 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,900))


#################################################
#For sensor 3
S3Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S3Mondays = rbind(S3Mondays,sens3[index])
}
S3Mondays = S3Mondays[2:289,]


S3Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S3Tuesdays = rbind(S3Tuesdays,sens3[index])
}
S3Tuesdays = S3Tuesdays[2:289,]

S3Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S3Thursdays = rbind(S3Thursdays,sens3[index])
}
S3Thursdays = S3Thursdays[2:289,]

S3Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S3Fridays = rbind(S3Fridays,sens3[index])
}
S3Fridays = S3Fridays[2:289,]



S3Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S3Sundays = rbind(S3Sundays,sens3[index])
}
S3Sundays = S3Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1, 36, and 52 were correctly identified
matplot(S3Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 3 All Mondays")
fbplot(S3Mondays,method='MBD',main="Sensor 3 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#27 is a holiday and matches with fbplot
matplot(S3Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 3 All Tuesdays")
fbplot(S3Tuesdays,method='MBD',main="Sensor 3 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and matches with fbplot
matplot(S3Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 3 All Thursdays")
fbplot(S3Thursdays,method='MBD',main="Sensor 3 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and was not identified
matplot(S3Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 3 All Fridays")
fbplot(S3Fridays,method='MBD',main="Sensor 3 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#6 is a holiday and was not identified
matplot(S3Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 3 All Sundays")
fbplot(S3Sundays,method='MBD',main="Sensor 3 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#################################################
#For sensor 4
S4Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S4Mondays = rbind(S4Mondays,sens4[index])
}
S4Mondays = S4Mondays[2:289,]


S4Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S4Tuesdays = rbind(S4Tuesdays,sens4[index])
}
S4Tuesdays = S4Tuesdays[2:289,]

S4Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S4Thursdays = rbind(S4Thursdays,sens4[index])
}
S4Thursdays = S4Thursdays[2:289,]

S4Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S4Fridays = rbind(S4Fridays,sens4[index])
}
S4Fridays = S4Fridays[2:289,]



S4Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S4Sundays = rbind(S4Sundays,sens4[index])
}
S4Sundays = S4Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 36 was correctly identified
matplot(S4Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 4 All Mondays")
fbplot(S4Mondays,method='MBD',main="Sensor 4 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#27 is a holiday and was not identified
matplot(S4Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 4 All Tuesdays")
fbplot(S4Tuesdays,method='MBD',main="Sensor 4 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and was not identified
matplot(S4Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 4 All Thursdays")
fbplot(S4Thursdays,method='MBD',main="Sensor 4 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and was not identified
matplot(S4Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 4 All Fridays")
fbplot(S4Fridays,method='MBD',main="Sensor 4 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#6 is a holiday and was not identified
matplot(S4Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 4 All Sundays")
fbplot(S4Sundays,method='MBD',main="Sensor 4 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#################################################
#For sensor 5
S5Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S5Mondays = rbind(S5Mondays,sens5[index])
}
S5Mondays = S5Mondays[2:289,]


S5Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S5Tuesdays = rbind(S5Tuesdays,sens5[index])
}
S5Tuesdays = S5Tuesdays[2:289,]

S5Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S5Thursdays = rbind(S5Thursdays,sens5[index])
}
S5Thursdays = S5Thursdays[2:289,]

S5Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S5Fridays = rbind(S5Fridays,sens5[index])
}
S5Fridays = S5Fridays[2:289,]



S5Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S5Sundays = rbind(S5Sundays,sens5[index])
}
S5Sundays = S5Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1, 22, 36, 52 correctly identified
matplot(S5Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 5 All Mondays")
fbplot(S5Mondays,method='MBD',main="Sensor 5 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#27 is a holiday and matches with fbplot
matplot(S5Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 5 All Tuesdays")
fbplot(S5Tuesdays,method='MBD',main="Sensor 5 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and matches with fbplot
matplot(S5Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 5 All Thursdays")
fbplot(S5Thursdays,method='MBD',main="Sensor 5 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and was not identified
matplot(S5Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 5 All Fridays")
fbplot(S5Fridays,method='MBD',main="Sensor 5 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#6 is a holiday and was not identified
matplot(S5Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 5 All Sundays")
fbplot(S5Sundays,method='MBD',main="Sensor 5 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#################################################
#For sensor 6
S6Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S6Mondays = rbind(S6Mondays,sens6[index])
}
S6Mondays = S6Mondays[2:289,]


S6Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S6Tuesdays = rbind(S6Tuesdays,sens6[index])
}
S6Tuesdays = S6Tuesdays[2:289,]

S6Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S6Thursdays = rbind(S6Thursdays,sens6[index])
}
S6Thursdays = S6Thursdays[2:289,]

S6Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S6Fridays = rbind(S6Fridays,sens6[index])
}
S6Fridays = S6Fridays[2:289,]



S6Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S6Sundays = rbind(S6Sundays,sens6[index])
}
S6Sundays = S6Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1 3 6 52 correctly identified
matplot(S6Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 6 All Mondays")
fbplot(S6Mondays,method='MBD',main="Sensor 6 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,500))

#27 is a holiday and matches with fbplot
matplot(S6Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 6 All Tuesdays")
fbplot(S6Tuesdays,method='MBD',main="Sensor 6 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,500))

#47 is a holiday and matches with fbplot
matplot(S6Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 6 All Thursdays")
fbplot(S6Thursdays,method='MBD',main="Sensor 6 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,500))

#47 is a holiday and matches with fbplot
matplot(S6Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 6 All Fridays")
fbplot(S6Fridays,method='MBD',main="Sensor 6 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,500))

#6 is a holiday and matches with fbplot
matplot(S6Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 6 All Sundays")
fbplot(S6Sundays,method='MBD',main="Sensor 6 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,500))

#################################################
#For sensor 7
S7Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S7Mondays = rbind(S7Mondays,sens7[index])
}
S7Mondays = S7Mondays[2:289,]


S7Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S7Tuesdays = rbind(S7Tuesdays,sens7[index])
}
S7Tuesdays = S7Tuesdays[2:289,]

S7Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S7Thursdays = rbind(S7Thursdays,sens7[index])
}
S7Thursdays = S7Thursdays[2:289,]

S7Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S7Fridays = rbind(S7Fridays,sens7[index])
}
S7Fridays = S7Fridays[2:289,]



S7Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S7Sundays = rbind(S7Sundays,sens7[index])
}
S7Sundays = S7Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 3, 6, 22 were correctly identified
matplot(S7Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 7 All Mondays")
fbplot(S7Mondays,method='MBD',main="Sensor 7 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#27 is a holiday and matches with fbplot
matplot(S7Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 7 All Tuesdays")
fbplot(S7Tuesdays,method='MBD',main="Sensor 7 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and was not identified
matplot(S7Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 7 All Thursdays")
fbplot(S7Thursdays,method='MBD',main="Sensor 7 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#47 is a holiday and was not identified
matplot(S7Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 7 All Fridays")
fbplot(S7Fridays,method='MBD',main="Sensor 7 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#6 is a holiday and matches with fbplot
matplot(S7Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 7 All Sundays")
fbplot(S7Sundays,method='MBD',main="Sensor 7 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,400))

#################################################

#For sensor 8
S8Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S8Mondays = rbind(S8Mondays,sens8[index])
}
S8Mondays = S8Mondays[2:289,]


S8Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S8Tuesdays = rbind(S8Tuesdays,sens8[index])
}
S8Tuesdays = S8Tuesdays[2:289,]

S8Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S8Thursdays = rbind(S8Thursdays,sens8[index])
}
S8Thursdays = S8Thursdays[2:289,]

S8Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S8Fridays = rbind(S8Fridays,sens8[index])
}
S8Fridays = S8Fridays[2:289,]



S8Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S8Sundays = rbind(S8Sundays,sens8[index])
}
S8Sundays = S8Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1, 6, 22, 36, 52 correctly identified
matplot(S8Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 8 All Mondays")
fbplot(S8Mondays,method='MBD',main="Sensor 8 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,800))

#27 is a holiday and matches with fbplot
matplot(S8Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 8 All Tuesdays")
fbplot(S8Tuesdays,method='MBD',main="Sensor 8 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,800))

#47 is a holiday and was not identified
matplot(S8Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 8 All Thursdays")
fbplot(S8Thursdays,method='MBD',main="Sensor 8 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,800))

#47 is a holiday and matches with fbplot
matplot(S8Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 8 All Fridays")
fbplot(S8Fridays,method='MBD',main="Sensor 8 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,800))

#6 is a holiday and was not identified
matplot(S8Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 8 All Sundays")
fbplot(S8Sundays,method='MBD',main="Sensor 8 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,800))

#################################################

#For sensor 9
S9Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S9Mondays = rbind(S9Mondays,sens9[index])
}
S9Mondays = S9Mondays[2:289,]


S9Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S9Tuesdays = rbind(S9Tuesdays,sens9[index])
}
S9Tuesdays = S9Tuesdays[2:289,]

S9Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S9Thursdays = rbind(S9Thursdays,sens9[index])
}
S9Thursdays = S9Thursdays[2:289,]

S9Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S9Fridays = rbind(S9Fridays,sens9[index])
}
S9Fridays = S9Fridays[2:289,]


S9Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S9Sundays = rbind(S9Sundays,sens9[index])
}
S9Sundays = S9Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and only 1, 3, 22, 36, 52 correctly identified
matplot(S9Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 9 All Mondays")
fbplot(S9Mondays,method='MBD',main="Sensor 9 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#27 is a holiday and matches with fbplot
matplot(S9Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 9 All Tuesdays")
fbplot(S9Tuesdays,method='MBD',main="Sensor 9 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and matches with fbplot
matplot(S9Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 9 All Thursdays")
fbplot(S9Thursdays,method='MBD',main="Sensor 9 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and matches with fbplot
matplot(S9Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 9 All Fridays")
fbplot(S9Fridays,method='MBD',main="Sensor 9 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#6 is a holiday and matches with fbplot
matplot(S9Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 9 All Sundays")
fbplot(S9Sundays,method='MBD',main="Sensor 9 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#################################################

#For sensor 10
S10Mondays = rep(NA,52)
for(i in seq(288)) {
  index = Mondays[seq(i,length(Mondays),288)]
  S10Mondays = rbind(S10Mondays,sens10[index])
}
S10Mondays = S10Mondays[2:289,]


S10Tuesdays = rep(NA,52)
for(i in seq(288)) {
  index = Tuesdays[seq(i,length(Tuesdays),288)]
  S10Tuesdays = rbind(S10Tuesdays,sens10[index])
}
S10Tuesdays = S10Tuesdays[2:289,]

S10Thursdays = rep(NA,52)
for(i in seq(288)) {
  index = Thursdays[seq(i,length(Thursdays),288)]
  S10Thursdays = rbind(S10Thursdays,sens10[index])
}
S10Thursdays = S10Thursdays[2:289,]

S10Fridays = rep(NA,52)
for(i in seq(288)) {
  index = Fridays[seq(i,length(Fridays),288)]
  S10Fridays = rbind(S10Fridays,sens10[index])
}
S10Fridays = S10Fridays[2:289,]


S10Sundays = rep(NA,52)
for(i in seq(288)) {
  index = SundaysNoSavings[seq(i,length(SundaysNoSavings),288)]
  S10Sundays = rbind(S10Sundays,sens10[index])
}
S10Sundays = S10Sundays[2:289,]

#plots of all days and their boxplots to find outliers
#there are 52 of each weekday in the year
#Running fbplot will return give the curves that are outliers which we match to see if holidays are there

#1,3,6,22,36,52 are holidays and match with fbplot
matplot(S10Mondays,type='l',xlab="Time",ylab="Traffic",main="Sensor 10 All Mondays")
fbplot(S10Mondays,method='MBD',main="Sensor 10 Mondays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#27 is a holiday and matches with fbplot
matplot(S10Tuesdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 10 All Tuesdays")
fbplot(S10Tuesdays,method='MBD',main="Sensor 10 Tuesdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and matches with fbplot
matplot(S10Thursdays,type='l',xlab="Time",ylab="Traffic",main="Sensor 10 All Thursdays")
fbplot(S10Thursdays,method='MBD',main="Sensor 10 Thursdays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#47 is a holiday and matches with fbplot
matplot(S10Fridays,type='l',xlab="Time",ylab="Traffic",main="Sensor 10 All Fridays")
fbplot(S10Fridays,method='MBD',main="Sensor 10 Fridays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))

#6 is a holiday and matches with fbplot
matplot(S10Sundays,type='l',xlab="Time",ylab="Traffic",main="Sensor 10 All Sundays")
fbplot(S10Sundays,method='MBD',main="Sensor 10 Sundays Functional Boxplot",xlab="Time",ylab="Traffic",ylim=c(0,600))


##Things to consider
#Mondays for each sensor and often had the most outlier points that were detected and often had not identified all the holidays

#Sensor 6 and 7 had a lot of identified outpoints for each day

#Sensor 10 had correctly identified every single holiday

#fbplot was pretty accurate with sensor 9 and 10

#fbplot wasnt able to detect a lot in sensors 1 and 4

#Independence Day was the most identified holiday

#MLK and Presidents day were not identified

#Visually speaking there are some outliers that we visually see on the graphs that fbplot seemed to not detect

#The largest distance between two sensors is within 2.3 miles

#Sensors are north east of Sacramento

#Holidays and number of times not identified:
  #     Mondays      Missed          Tuesdays       Missed      Thursdays     Missed      Fridays     Missed      Sundays     Missed
  # ---------------------------------------------------------------------------------------------------------------------------------------
  #   New Years      3           Independence        1       Thanksgiving      4      Black Friday     5         Superbowl       5
  #   MLK            6
  #   Presidents     6
  #   Memorial       4
  #   Labor          2
  #   Christmas      3

#Sensors and number of missed points
  #     Sensor       # of Missed Detections
  #------------------------------------------------
  #       1                 8
  #       2                 2
  #       3                 4
  #       4                 9
  #       5                 3
  #       6                 2
  #       7                 5
  #       8                 3
  #       9                 1
  #       10                0
