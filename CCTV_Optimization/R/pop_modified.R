setwd("C:/Users/user/Desktop/공빅/구로구청/업무 파일/CCTV 분석/기초데이터/10. 생활인구/구로구 생활인구(집계구)")
d_11 <- data.frame(); d_12 <- data.frame(); d_01 <- data.frame(); d_02 <- data.frame()
d_03 <- data.frame(); d_04 <- data.frame(); d_05 <- data.frame(); d_06 <- data.frame()
d_07 <- data.frame(); d_08 <- data.frame(); d_09 <- data.frame(); d_10 <- data.frame()


for(i in 1101:1130){
  df <- read.csv(paste0("LOCAL_PEOPLE_202011/LOCAL_PEOPLE_2020",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_11 <- rbind(d_11, df)
}


for(i in 1201:1231){
  df <- read.csv(paste0("LOCAL_PEOPLE_202012/LOCAL_PEOPLE_2020",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_12 <- rbind(d_12, df)
}

for(i in 101:131){
  df <- read.csv(paste0("LOCAL_PEOPLE_202101/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_01 <- rbind(d_01, df)
}

for(i in 201:228){
  df <- read.csv(paste0("LOCAL_PEOPLE_202102/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_02 <- rbind(d_02, df)
}

for(i in 301:331){
  df <- read.csv(paste0("LOCAL_PEOPLE_202103/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_03 <- rbind(d_03, df)
}

for(i in 401:430){
  df <- read.csv(paste0("LOCAL_PEOPLE_202104/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_04 <- rbind(d_04, df)
}

for(i in 501:531){
  df <- read.csv(paste0("LOCAL_PEOPLE_202105/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_05 <- rbind(d_05, df)
}

for(i in 601:630){
  df <- read.csv(paste0("LOCAL_PEOPLE_202106/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_06 <- rbind(d_06, df)
}

for(i in 701:731){
  df <- read.csv(paste0("LOCAL_PEOPLE_202107/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_07 <- rbind(d_07, df)
}

for(i in 801:831){
  df <- read.csv(paste0("LOCAL_PEOPLE_202108/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_08 <- rbind(d_08, df)
}

for(i in 901:930){
  df <- read.csv(paste0("LOCAL_PEOPLE_202109/LOCAL_PEOPLE_20210",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_09 <- rbind(d_09, df)
}

for(i in 1001:1031){
  df <- read.csv(paste0("LOCAL_PEOPLE_202110/LOCAL_PEOPLE_2021",i,".csv"), head=TRUE)
  colnames(df) <- c("date", "hour", "d_code", "j_code" , "total", "m_0", "m_10", "m_15", "m_20", "m_25", "m_30", "m_35", "m_40", "m_45",
                    "m_50", "m_55", "m_60", "m_65", "m_70", "w_0", "w_10", "w_15", "w_20", "w_25", "w_30", "w_35", "w_40", "w_45",
                    "w_50", "w_55", "w_60", "w_65", "w_70")
  df <- subset(df, d_code >= 11530510 & d_code <= 11530790)
  df <- subset(df, (hour>=0 & hour<6) | (hour>=18 & hour<24))
  d_10 <- rbind(d_10, df)
}

for(i in 1:length(d_11)){ d_11[d_11[,i]=="*",i]=0 }
for(i in 1:length(d_12)){ d_12[d_12[,i]=="*",i]=0 }
for(i in 1:length(d_01)){ d_01[d_01[,i]=="*",i]=0 }
for(i in 1:length(d_02)){ d_02[d_02[,i]=="*",i]=0 }
for(i in 1:length(d_03)){ d_03[d_03[,i]=="*",i]=0 }
for(i in 1:length(d_04)){ d_04[d_04[,i]=="*",i]=0 }
for(i in 1:length(d_05)){ d_05[d_05[,i]=="*",i]=0 }
for(i in 1:length(d_06)){ d_06[d_06[,i]=="*",i]=0 }
for(i in 1:length(d_07)){ d_07[d_07[,i]=="*",i]=0 }
for(i in 1:length(d_08)){ d_08[d_08[,i]=="*",i]=0 }
for(i in 1:length(d_09)){ d_09[d_09[,i]=="*",i]=0 }
for(i in 1:length(d_10)){ d_10[d_10[,i]=="*",i]=0 }

pop_guro <- rbind(d_11,d_12,d_01,d_02,d_03,d_04,d_05,d_06,d_07,d_08,d_09,d_10)

write.csv(pop_guro, file="pop_guro.csv", row.names = FALSE)