setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/기초데이터/10. 생활인구/구로구 생활인구(집계구)")
pop_guro <- read.csv("pop_guro.csv", header = TRUE)

pop_guro$m0_19 <- pop_guro$m_0 + pop_guro$m_10 + pop_guro$m_15
pop_guro$m20_64 <- pop_guro$m_20 + pop_guro$m_25 + pop_guro$m_30 + pop_guro$m_35 + pop_guro$m_40 + pop_guro$m_45 + pop_guro$m_50 + pop_guro$m_55 + pop_guro$m_60
pop_guro$m65_ <- pop_guro$m_65 + pop_guro$m_70
pop_guro$w0_34 <- pop_guro$w_0 + pop_guro$w_10 + pop_guro$w_15 + pop_guro$w_20 + pop_guro$w_25 + pop_guro$w_30
pop_guro$w35_64 <- pop_guro$w_35 + pop_guro$w_40 + pop_guro$w_45 + pop_guro$w_50 + pop_guro$w_55 + pop_guro$w_60
pop_guro$w65_ <- pop_guro$w_65 + pop_guro$w_70
pop_guro <- pop_guro[,-(6:33)]

pop_guro$flow <- 1.3 * pop_guro$m0_19 + pop_guro$m20_64 + 1.3 * pop_guro$m65_ + 1.5 * pop_guro$w0_34 + 1.2 * pop_guro$w35_64 + 1.3 * pop_guro$w65_
pop_guro <- pop_guro[,-(6:11)]

pop_guro$date <- as.Date(as.character(pop_guro$date), format = '%Y%m%d')
pop_guro$month <- as.numeric(paste0(strftime(pop_guro$date, "%Y"), strftime(pop_guro$date, "%m")))
pop_guro$day <- as.numeric(strftime(pop_guro$date, "%d"))

flow1 <- subset(pop_guro, hour >= 18 & hour < 24)
flow1$flow1_night <- flow1$flow
flow1$flow2_home <- 0

flow2 <- subset(pop_guro, hour >= 0 & hour < 6)
flow2$flow1_night <- 0
flow2$flow2_home <- flow2$flow

flow <- rbind(flow1, flow2)
flow <- cbind(flow[,3:4], flow[,7:8], flow[,2], flow[,9:10])
colnames(flow) <- c("d_code", "j_code", "month", "day", "hour", "flow1_night", "flow2_home")

flow_total <- as.data.frame(aggregate(list(flow$flow1_night, flow$flow2_home), by=list(flow$d_code, flow$j_code), FUN=sum))
colnames(flow_total) <- c("d_code", "j_code", "flow1_tot", "flow2_tot")

setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/분석데이터/05. 범죄취약지수_유동인구")
write.csv(flow_total, file="flow_modified.csv", row.names=FALSE)