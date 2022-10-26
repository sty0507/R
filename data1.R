# 직접 데이터 입력하기
ID <- c(1, 2,3,4,5) # 묶어줌
ID

gender <- c("F", "M", "F", "M", "F")
gender

Data <- data.frame(ID = ID, Gender = gender) # 두 데이터를 합침
View(Data)

getwd() # = pwd

#---------------------------------------------------
# TXT 파일 가져오기
ex_data <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8")
View(ex_data)
# 헤더에 그냥 다른 값이 들어가짐

ex_data1 <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8", header=TRUE)
# 헤더에 값이 들어가짐
View(ex_data1)

varname <- c("ID", "Gender", "AGE", "AREA")
ex_data2 <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8", col.names = varname)
# 컬럼(헤더)의 값이 varname으로 들어가짐
View(ex_data2)

# 행 스킵하여 가져오기
ex_data3 <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8", header = TRUE, skip = 2)
View(ex_data3)

# 행 개수 지정하여 가져오기
ex_data4 <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8", header = TRUE, nrows = 7)
View(ex_data4)

# 데이터 구분자 지정하여 가져오기
ex_data5 <- read.table("파일 주소(C:/------/-----.txt)", encoding - "EUC-KR", fileEncoding = "UTF-8", header = TRUE, sep = ",")
View(ex_data5)
