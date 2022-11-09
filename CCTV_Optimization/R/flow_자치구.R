# 서울시 생활인구 데이터에서 구로구 추출
f1 <- read.csv("flow1 구로구 서울생활인구(내국인).csv", header = TRUE)
f2 <- read.csv("flow2 구로구 서울생활인구(내국인).csv", header = TRUE)
colnames(f1) <- c("date", "time", "d_code", "d_name", "total", "w_10", "w_20","w_30")
colnames(f2) <- c("date", "time", "d_code", "d_name", "total", "w_10", "w_20","w_30")
flow <- subset(rbind(f1, f2), d_code >= 11530510 & d_code <= 11530790)

# 구로구 데이터 날짜 변수 변환
flow$date <- as.Date(as.character(flow$date), format = '%Y%m%d')
flow$month <- paste(strftime(flow$date, "%Y"), strftime(flow$date, "%m"))
flow$month <- as.numeric(gsub(" ","",flow$month))
flow$day <- as.numeric(strftime(flow$date, "%d"))

# flow1_night, flow2_home 변수 생성
flow1 <- subset(flow, time >= 18 & time < 24)
flow1$flow1_night <- flow1$w_10 + flow1$w_20 + flow1$w_30
flow1$flow2_home <- 0

flow2 <- subset(flow, time >= 0 & time < 6)
flow2$flow1_night <- 0
flow2$flow2_home <- flow2$w_10 + flow2$w_20 + flow2$w_30

flow <- rbind(flow1, flow2)
flow <- cbind(flow[,3:4], flow[,9:10], flow[,2], flow[,11:12])
colnames(flow) <- c("d_code", "d_name", "month", "day", "time", "flow1_night", "flow2_home")

# 행정동별 변수값 월합계 및 총합계 산출
flow_month <- as.data.frame(aggregate(list(flow$flow1_night, flow$flow2_home), by=list(flow$d_code, flow$d_name, flow$month), FUN=sum))
colnames(flow_month) <- c("d_code", "d_name", "month", "flow1_tot", "flow2_tot")
flow_total <- as.data.frame(aggregate(list(flow$flow1_night, flow$flow2_home), by=list(flow$d_code, flow$d_name), FUN=sum))
colnames(flow_total) <- c("d_code", "d_name", "flow1_tot", "flow2_tot")

write.csv(flow_month, file="flow_month.csv", row.names=FALSE)
write.csv(flow_total, file="flow_total.csv", row.names=FALSE)