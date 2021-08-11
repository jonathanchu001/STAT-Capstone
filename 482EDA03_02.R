variable.names(TrafficData)
TrafficData <- data.frame(TrafficData)
TrafficData[,1]
par(mfrow = c(2,1))
##work with time vs. sensor 1 
time = TrafficData[,2]
sens1 = TrafficData[,3]
tsplot(time,sens1)
average1 = mean(TrafficData[["S313368"]], na.rm = T)
average1
abline(h = average1, col = "red")

##work with time vs. sensor 2
sens2 = TrafficData[,4]
tsplot(time,sens2)
average2 = mean(TrafficData[["S313376"]], na.rm = T)
average2
abline(h = average2, col = "red")

##work with time vs. sensor 3
sens3 = TrafficData[,5]
tsplot(time,sens3)
average3 = mean(TrafficData[["S313487"]], na.rm = T)
average3
abline(h = average3, col = "red")

##work with time vs. sensor 4
sens4 = TrafficData[,6]
tsplot(time,sens4)
average4 = mean(TrafficData[["S314165"]], na.rm = T)
average4
abline(h = average4, col = "red")

##work with time vs. sensor 5
sens5 = TrafficData[,7]
tsplot(time,sens5)
average5 = mean(TrafficData[["S314402"]], na.rm = T)
average5
abline(h = average5, col = "red")

##work with time vs. sensor 6
sens6 = TrafficData[,8]
tsplot(time,sens6)
average6 = mean(TrafficData[["S314514"]], na.rm = T)
average6
abline(h = average6, col = "red")

##work with time vs. sensor 7
sens7 = TrafficData[,9]
tsplot(time,sens7)
average7 = mean(TrafficData[["S316063"]], na.rm = T)
average7
abline(h = average7, col = "red")

##work with time vs. sensor 8
sens8 = TrafficData[,10]
tsplot(time,sens8)
average8 = mean(TrafficData[["S316387"]], na.rm = T)
average8
abline(h = average8, col = "red")

##work with time vs. sensor 9
sens9 = TrafficData[,11]
tsplot(time,sens9)
average9 = mean(TrafficData[["S318586"]], na.rm = T)
average9
abline(h = average9, col = "red")

##work with time vs. sensor 10
sens10 = TrafficData[,12]
tsplot(time,sens10)
average10 = mean(TrafficData[["S318593"]], na.rm = T)
average10
abline(h = average10, col = "red")

##barplot

H <- c(average1,average2,average3,average4,average5,average6,average7,average8,average9,average10)
M <- c(1,2,3,4,5,6,7,8,9,10)
png(file = "eda_avgs.png")

# Plot the bar chart 
barplot(H,names.arg=M,xlab="Sensor",ylab="Yearly Average")

# Save the file
dev.off()


