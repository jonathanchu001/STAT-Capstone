S1H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens1[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S1MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S1H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens1[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S1H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens1[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S1SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S1H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens1[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S1H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens1[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S1H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens1[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S1TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S1H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens1[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S1H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens1[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S1ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S1H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens1[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S1FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S1H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens1[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S1MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor1totalgraphs = ggarrange(S1H1vsAvg+ rremove("x.text"),S1H2vsAvg+ rremove("x.text"),S1H3vsAvg+ rremove("x.text"),S1H4vsAvg+ rremove("x.text"),S1H5vsAvg+ rremove("x.text"),
                               S1H6vsAvg+ rremove("x.text"),S1H7vsAvg+ rremove("x.text"),S1H8vsAvg+ rremove("x.text"),S1H9vsAvg+ rremove("x.text"),S1H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor1totalgraphs, top = "Sensor 1 Holiday Graphs")

S2H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens2[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S2MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S2H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens2[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S2H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens2[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S2SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S2H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens2[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S2H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens2[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S2H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens2[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S2TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S2H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens2[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S2H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens2[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S2ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S2H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens2[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S2FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S2H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens2[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S2MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor2totalgraphs = ggarrange(S2H1vsAvg+ rremove("x.text"),S2H2vsAvg+ rremove("x.text"),S2H3vsAvg+ rremove("x.text"),S2H4vsAvg+ rremove("x.text"),S2H5vsAvg+ rremove("x.text"),
                               S2H6vsAvg+ rremove("x.text"),S2H7vsAvg+ rremove("x.text"),S2H8vsAvg+ rremove("x.text"),S2H9vsAvg+ rremove("x.text"),S2H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor2totalgraphs, top = "Sensor 2 Holiday Graphs")

S3H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens3[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S3MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S3H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens3[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S3H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens3[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S3SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S3H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens3[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S3H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens3[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S3H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens3[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S3TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S3H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens3[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S3H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens3[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S3ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S3H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens3[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S3FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S3H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens3[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S3MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor3totalgraphs = ggarrange(S3H1vsAvg+ rremove("x.text"),S3H2vsAvg+ rremove("x.text"),S3H3vsAvg+ rremove("x.text"),S3H4vsAvg+ rremove("x.text"),S3H5vsAvg+ rremove("x.text"),
                               S3H6vsAvg+ rremove("x.text"),S3H7vsAvg+ rremove("x.text"),S3H8vsAvg+ rremove("x.text"),S3H9vsAvg+ rremove("x.text"),S3H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor3totalgraphs, top = "Sensor 3 Holiday Graphs")

S4H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens4[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S4MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S4H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens4[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S4H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens4[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S4SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S4H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens4[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S4H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens4[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S4H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens4[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S4TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S4H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens4[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S4H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens4[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S4ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S4H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens4[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S4FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S4H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens4[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S4MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor4totalgraphs = ggarrange(S4H1vsAvg+ rremove("x.text"),S4H2vsAvg+ rremove("x.text"),S4H3vsAvg+ rremove("x.text"),S4H4vsAvg+ rremove("x.text"),S4H5vsAvg+ rremove("x.text"),
                               S4H6vsAvg+ rremove("x.text"),S4H7vsAvg+ rremove("x.text"),S4H8vsAvg+ rremove("x.text"),S4H9vsAvg+ rremove("x.text"),S4H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor4totalgraphs, top = "Sensor 4 Holiday Graphs")

S5H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens5[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S5MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S5H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens5[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S5H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens5[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S5SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S5H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens5[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S5H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens5[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S5H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens5[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S5TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S5H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens5[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S5H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens5[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S5ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S5H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens5[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S5FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S5H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens5[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S5MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor5totalgraphs = ggarrange(S5H1vsAvg+ rremove("x.text"),S5H2vsAvg+ rremove("x.text"),S5H3vsAvg+ rremove("x.text"),S5H4vsAvg+ rremove("x.text"),S5H5vsAvg+ rremove("x.text"),
                               S5H6vsAvg+ rremove("x.text"),S5H7vsAvg+ rremove("x.text"),S5H8vsAvg+ rremove("x.text"),S5H9vsAvg+ rremove("x.text"),S5H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor5totalgraphs, top = "Sensor 5 Holiday Graphs")

S6H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens6[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S6MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S6H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens6[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S6H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens6[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S6SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S6H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens6[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S6H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens6[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S6H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens6[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S6TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S6H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens6[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S6H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens6[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S6ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S6H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens6[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S6FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S6H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens6[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S6MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor6totalgraphs = ggarrange(S6H1vsAvg+ rremove("x.text"),S6H2vsAvg+ rremove("x.text"),S6H3vsAvg+ rremove("x.text"),S6H4vsAvg+ rremove("x.text"),S6H5vsAvg+ rremove("x.text"),
                               S6H6vsAvg+ rremove("x.text"),S6H7vsAvg+ rremove("x.text"),S6H8vsAvg+ rremove("x.text"),S6H9vsAvg+ rremove("x.text"),S6H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor6totalgraphs, top = "Sensor 6 Holiday Graphs")

S7H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens7[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S7MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S7H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens7[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S7H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens7[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S7SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S7H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens7[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S7H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens7[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S7H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens7[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S7TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S7H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens7[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S7H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens7[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S7ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S7H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens7[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S7FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S7H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens7[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S7MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor7totalgraphs = ggarrange(S7H1vsAvg+ rremove("x.text"),S7H2vsAvg+ rremove("x.text"),S7H3vsAvg+ rremove("x.text"),S7H4vsAvg+ rremove("x.text"),S7H5vsAvg+ rremove("x.text"),
                               S7H6vsAvg+ rremove("x.text"),S7H7vsAvg+ rremove("x.text"),S7H8vsAvg+ rremove("x.text"),S7H9vsAvg+ rremove("x.text"),S7H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor7totalgraphs, top = "Sensor 7 Holiday Graphs")

S8H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens8[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S8MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S8H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens8[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S8H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens8[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S8SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S8H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens8[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S8H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens8[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S8H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens8[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S8TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S8H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens8[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S8H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens8[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S8ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S8H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens8[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S8FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S8H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens8[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S8MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor8totalgraphs = ggarrange(S8H1vsAvg+ rremove("x.text"),S8H2vsAvg+ rremove("x.text"),S8H3vsAvg+ rremove("x.text"),S8H4vsAvg+ rremove("x.text"),S8H5vsAvg+ rremove("x.text"),
                               S8H6vsAvg+ rremove("x.text"),S8H7vsAvg+ rremove("x.text"),S8H8vsAvg+ rremove("x.text"),S8H9vsAvg+ rremove("x.text"),S8H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor8totalgraphs, top = "Sensor 8 Holiday Graphs")

S9H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens9[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S9MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S9H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens9[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S9H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens9[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S9SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S9H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens9[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S9H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens9[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S9H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens9[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S9TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S9H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens9[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S9H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens9[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S9ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S9H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens9[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S9FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S9H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens9[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S9MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor9totalgraphs = ggarrange(S9H1vsAvg+ rremove("x.text"),S9H2vsAvg+ rremove("x.text"),S9H3vsAvg+ rremove("x.text"),S9H4vsAvg+ rremove("x.text"),S9H5vsAvg+ rremove("x.text"),
                               S9H6vsAvg+ rremove("x.text"),S9H7vsAvg+ rremove("x.text"),S9H8vsAvg+ rremove("x.text"),S9H9vsAvg+ rremove("x.text"),S9H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor9totalgraphs, top = "Sensor 9 Holiday Graphs")

S10H1vsAvg <- ggplot() + geom_line(aes(x=date[H1],y=sens10[H1],col="Holiday")) + geom_line(aes(x=date[H1],y=S10MondayAvgs,col="Average Monday"))+ xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="New Year's Day vs Average Monday") 
S10H2vsAvg <- ggplot() + geom_line(aes(x=date[H2],y=sens10[H2],col="Holiday")) + geom_line(aes(x=date[H2],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="MLK Day vs Average Monday")
S10H3vsAvg <- ggplot() + geom_line(aes(x=date[H3],y=sens10[H3],col="Holiday")) + geom_line(aes(x=date[H3],y=S10SundayAvgs,col="Average Sunday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Superbowl Sunday vs Average Sunday")
S10H4vsAvg <- ggplot() + geom_line(aes(x=date[H4],y=sens10[H4],col="Holiday")) + geom_line(aes(x=date[H4],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="President's Day vs Average Monday")
S10H5vsAvg <- ggplot() + geom_line(aes(x=date[H5],y=sens10[H5],col="Holiday")) + geom_line(aes(x=date[H5],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Memorial Day vs Average Monday")
S10H6vsAvg <- ggplot() + geom_line(aes(x=date[H6],y=sens10[H6],col="Holiday")) + geom_line(aes(x=date[H6],y=S10TuesdayAvgs,col="Average Tuesday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Independence Day vs Average Tuesday")
S10H7vsAvg <- ggplot() + geom_line(aes(x=date[H7],y=sens10[H7],col="Holiday")) + geom_line(aes(x=date[H7],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Labor Day vs Average Monday")
S10H8vsAvg <- ggplot() + geom_line(aes(x=date[H8],y=sens10[H8],col="Holiday")) + geom_line(aes(x=date[H8],y=S10ThursdayAvgs,col="Average Thursday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Thanksgiving Day vs Average Thursday")
S10H9vsAvg <- ggplot() + geom_line(aes(x=date[H9],y=sens10[H9],col="Holiday")) + geom_line(aes(x=date[H9],y=S10FridayAvgs,col="Average Friday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Day After Thanksgiving vs Average Friday")
S10H10vsAvg <- ggplot() + geom_line(aes(x=date[H10],y=sens10[H10],col="Holiday")) + geom_line(aes(x=date[H10],y=S10MondayAvgs,col="Average Monday")) + xlab(label="Time") + ylab(label="Traffic") + ggtitle(label="Christmas Day vs Average Monday")

sensor10totalgraphs = ggarrange(S10H1vsAvg+ rremove("x.text"),S10H2vsAvg+ rremove("x.text"),S10H3vsAvg+ rremove("x.text"),S10H4vsAvg+ rremove("x.text"),S10H5vsAvg+ rremove("x.text"),
                               S10H6vsAvg+ rremove("x.text"),S10H7vsAvg+ rremove("x.text"),S10H8vsAvg+ rremove("x.text"),S10H9vsAvg+ rremove("x.text"),S1H10vsAvg+ rremove("x.text"), common.legend = TRUE,
                               ncol = 5, nrow = 2)
annotate_figure(sensor10totalgraphs, top = "Sensor 10 Holiday Graphs")
