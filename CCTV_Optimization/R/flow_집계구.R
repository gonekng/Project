# 집계구별 데이터 합치기
setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/기초데이터/10. 생활인구/구로구 생활인구(집계구)")
flow <- data.frame()
for(i in 11:12){
  df <- read.csv(paste0("pop_guro_2020",i,".csv"), header = TRUE)
  flow <- rbind(flow, df)
}
for(i in 101:110){
  df <- read.csv(paste0("pop_guro_202",i,".csv"), header = TRUE)
  flow <- rbind(flow, df)
}

# 구로구 데이터 날짜 변수 변환
flow$date <- as.Date(as.character(flow$date), format = '%Y%m%d')
flow$month <- as.numeric(paste0(strftime(flow$date, "%Y"), strftime(flow$date, "%m")))
flow$day <- as.numeric(strftime(flow$date, "%d"))

# flow1_night, flow2_home 변수 생성
flow1 <- subset(flow, hour >= 18 & hour < 24)
flow1$flow1_night <- flow1$women
flow1$flow2_home <- 0

flow2 <- subset(flow, hour >= 0 & hour < 6)
flow2$flow1_night <- 0
flow2$flow2_home <- flow2$women

flow <- rbind(flow1, flow2)
flow <- cbind(flow[,3:4], flow[,7:8], flow[,2], flow[,9:10])
colnames(flow) <- c("d_code", "j_code", "month", "day", "hour", "flow1_night", "flow2_home")

# 집계구별 변수값 월합계 및 총합계 산출
flow_month <- as.data.frame(aggregate(list(flow$flow1_night, flow$flow2_home), by=list(flow$d_code, flow$j_code, flow$month), FUN=sum))
colnames(flow_month) <- c("d_code", "j_code", "month", "flow1_tot", "flow2_tot")
flow_total <- as.data.frame(aggregate(list(flow$flow1_night, flow$flow2_home), by=list(flow$d_code, flow$j_code), FUN=sum))
colnames(flow_total) <- c("d_code", "j_code", "flow1_tot", "flow2_tot")

setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/분석데이터/05. 범죄취약지수_유동인구/집계구별")
write.csv(flow_month, file="flow_month.csv", row.names=FALSE)
write.csv(flow_total, file="flow_total.csv", row.names=FALSE)