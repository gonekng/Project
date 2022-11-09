setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/기초데이터/01. CCTV설치")
data <- read.csv("서울특별시_구로구_CCTV_20211126.csv", header=TRUE)
data2 <- cbind(seq(from=1, to=length(data$관리기관명)), data)
colnames(data2) <- c("번호", colnames(data))
for(i in 1:length(data2$번호)){
  if(data2[i,6]==1) next
  num <- data2[i,6]-1
  for(j in 1:num){
    data2 <- rbind(data2, as.data.frame(data2[i,]))
  }
}

data2 <- data2[order(data2$번호),]
head(data2)
tail(data2)
str(data2)
write.csv(data2, file="cctv_2021.csv", row.names = FALSE)