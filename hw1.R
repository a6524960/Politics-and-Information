library(dplyr)
data_201807=data.table::fread('201807_data.csv',data.table = F,encoding = 'UTF-8')
data_201808=data.table::fread('201808_data.csv',data.table = F,encoding = 'UTF-8')
data_201809=data.table::fread('201809_data.csv',data.table = F,encoding = 'UTF-8')
data_2018010=data.table::fread('201810_data.csv',data.table = F,encoding = 'UTF-8')
data_201811=data.table::fread('201811_data.csv',data.table = F,encoding = 'UTF-8')
data_201812=data.table::fread('201812_data.csv',data.table = F,encoding = 'UTF-8')

T=rbind(data_201807,data_201808,data_201809)
H7 = grepl("黃偉哲", T$Page_Name)
T$Page_Name[H7]
test=filter(T,grepl("黃偉哲", T$Page_Name)==TRUE)
test$Date=as.POSIXct(test$Date,"%Y/%m/%d %H:%M:%S")
plot(test$Date,test$Share_Count,type='l',col='red')
#黃偉哲7.8.9月的文章分享數量折線圖。

T2=rbind(data_2018010,data_201811,data_201812)
H8 = grepl("黃偉哲", T2$Page_Name)
T2$Page_Name[H8]
test2=filter(T2,grepl("黃偉哲", T2$Page_Name)==TRUE)
test2$Date=as.POSIXct(test2$Date,"%Y/%m/%d %H:%M:%S")
plot(test2$Date,test2$Share_Count,type='l',col='blue')
#黃偉哲10.11.12月的文章分享數量折線圖。

T3=rbind(data_201807,data_201808,data_201809)
K7 = grepl("高思博", T3$Page_Name)
T3$Page_Name[K7]
test3=filter(T3,grepl("高思博", T3$Page_Name)==TRUE)
test3$Date=as.POSIXct(test3$Date,"%Y/%m/%d %H:%M:%S")
plot(test3$Date,test3$Share_Count,type='l',col='yellow')
#高思博7.8.9月的文章分享數量折線圖。

T4=rbind(data_2018010,data_201811,data_201812)
K8 = grepl("高思博", T4$Page_Name)
T4$Page_Name[K8]
test4=filter(T4,grepl("高思博", T4$Page_Name)==TRUE)
test4$Date=as.POSIXct(test4$Date,"%Y/%m/%d %H:%M:%S")
plot(test4$Date,test4$Share_Count,type='l',col='green')
#高思博10.11.12月的文章分享數量折線圖。
