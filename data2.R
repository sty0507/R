#CSV 파일 가져오기
ex_csv <- read.csv("파일 주소(C:/------/-----.csv)")
View(ex_csv)

# readxl 패키지 설치 및 로드
install.packages('readxl')
library(readxl)

# 엑셀 파일 가져오기
excel_data <- read_excel("파일 주소(C:/------/-----.xlsx)")
View(excel_data)

# XML 파일 가져오기
xml_data <- xmlToDataFrame("파일 주소(C:/------/-----.xml)")
View(xml_data)

# jsonlite 패키지 설치 및 로드하기
install.packages("jsonlite")
library(jsonlite)

# JSON 파일 가져오기
json_data <- fromJSON("파일 주소(C:/------/-----.json)")
str(json_data)