setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/기초데이터/10. 생활인구/구로구 생활인구(집계구)")
d_11 <- data.frame(); d_12 <- data.frame(); d_01 <- data.frame(); d_02 <- data.frame()
d_03 <- data.frame(); d_04 <- data.frame(); d_05 <- data.frame(); d_06 <- data.frame()
d_07 <- data.frame(); d_08 <- data.frame(); d_09 <- data.frame(); d_10 <- data.frame()


for(i in 1101:1130){
  df <- read.csv(paste0("LOCAL_PEOPLE_202011/LOCAL_PEOPLE_2020",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_11 <- rbind(d_11, cbind(df[,1:5], df[,21:26]))
}
guro_11 <- subset(d_11, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 1201:1231){
  df <- read.csv(paste0("LOCAL_PEOPLE_202012/LOCAL_PEOPLE_2020",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_12 <- rbind(d_12, cbind(df[,1:5], df[,21:26]))
}
guro_12 <- subset(d_12, d_code >= 11530510 & d_code <= 11530790)


for(i in 101:131){
  df <- read.csv(paste0("LOCAL_PEOPLE_202101/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_01 <- rbind(d_01, cbind(df[,1:5], df[,21:26]))
}
guro_01 <- subset(d_01, d_code >= 11530510 & d_code <= 11530790)


for(i in 201:228){
  df <- read.csv(paste0("LOCAL_PEOPLE_202102/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_02 <- rbind(d_02, cbind(df[,1:5], df[,21:26]))
}
guro_02 <- subset(d_02, d_code >= 11530510 & d_code <= 11530790)


for(i in 301:331){
  df <- read.csv(paste0("LOCAL_PEOPLE_202103/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_03 <- rbind(d_03, cbind(df[,1:5], df[,21:26]))
}
guro_03 <- subset(d_03, d_code >= 11530510 & d_code <= 11530790)


for(i in 401:430){
  df <- read.csv(paste0("LOCAL_PEOPLE_202104/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_04 <- rbind(d_04, cbind(df[,1:5], df[,21:26]))
}
guro_04 <- subset(d_04, d_code >= 11530510 & d_code <= 11530790)


for(i in 501:531){
  df <- read.csv(paste0("LOCAL_PEOPLE_202105/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_05 <- rbind(d_05, cbind(df[,1:5], df[,21:26]))
}
guro_05 <- subset(d_05, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 601:630){
  df <- read.csv(paste0("LOCAL_PEOPLE_202106/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_06 <- rbind(d_06, cbind(df[,1:5], df[,21:26]))
}
guro_06 <- subset(d_06, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 701:731){
  df <- read.csv(paste0("LOCAL_PEOPLE_202107/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_07 <- rbind(d_07, cbind(df[,1:5], df[,21:26]))
}
guro_07 <- subset(d_07, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 801:831){
  df <- read.csv(paste0("LOCAL_PEOPLE_202108/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_08 <- rbind(d_08, cbind(df[,1:5], df[,21:26]))
}
guro_08 <- subset(d_08, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 901:930){
  df <- read.csv(paste0("LOCAL_PEOPLE_202109/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_09 <- rbind(d_09, cbind(df[,1:5], df[,21:26]))
}
guro_09 <- subset(d_09, d_code >= 11530510 & d_code <= 11530790)

  
for(i in 1001:1031){
  df <- read.csv(paste0("LOCAL_PEOPLE_202110/LOCAL_PEOPLE_2021",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  d_10 <- rbind(d_10, cbind(df[,1:5], df[,21:26]))
}
guro_10 <- subset(d_10, d_code >= 11530510 & d_code <= 11530790)

