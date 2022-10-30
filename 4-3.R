# 데이터 시각화
# freq(변수명, plot = T, main = '그래프 제목')

install.packages("descr")
library(descr)

getwd() # 현재 위치 = pwd

# 엑셀 파일 가져오기
library(readxl)
exdata1 <- read_excel("Sample1.xlsx")
View(exdata1)

# 막대 그래프
freq(exdata1$SEX, plot = T, main = '성별(barplot)')

table(exdata1$SEX)


# 빈도 분포를 구하고 막대 그래프 그리기
dist_sex <- table(exdata1$SEX)
dist_sex
barplot(dist_sex)

# 막대 그래프 축 범위와 제목 지정하기
barplot(dist_sex, ylim=c(0,14), main="BARPLOT", xlab="SEX", ylab="FREQUENCY", names = c("Famale", "Male"))

# 막대 그래프 색상 변경하기
barplot(dist_sex, ylim=c(0,14), main="BARPLOT", xlab="SEX", ylab="FREQUENCY", names = c("Famale", "Male"), col = c("pink", "navy"))

# 상자 그림 그리기
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT)

# 상자 그림 축 범위, 제목 지정
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT, ylim=c(0,60), main="boxplot", names=c("21년건수", "20년건수"))

# 상자 그림 색상 변경
boxplot(exdata1$Y21_CNT, exdata1$Y20_CNT, ylim=c(0,60), main="boxplot", names=c("21년건수", "20년건수"), col=c("green", "yellow"))

# 히스토 그램 -> 연속성을 가진 데이터
hist(exdata1$AGE, xlim=c(0,60), ylim=c(0,7), main="AGE분포")

# 파이차트
data(mtcars)
x <- table(mtcars$gear)
pie(x)

# 줄기 잎
x <- c(1,2,3,4,7,8,8,5,9,6,9)
stem(x) # 잎에는 소수점 아래의 0을 표현함

stem(x, scale = 2)

stem(x, scale = 0.5)

# 산점도 그리기
data(iris)
plot(x = iris$Sepal.Length, y=iris$Petal.Width)

# 산점도 행렬
data(iris)
pairs(iris)

# psych 패키지로 산점도 행렬 그리기
install.packages("psych")
library(psych)
data(iris)
pairs.panels(iris)



# 그래프 관련 보기 좋은 사이트
# https://www.data-to-viz.com/