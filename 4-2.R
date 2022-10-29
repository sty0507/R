data() # 내장 데이터에는 뭐가 있는지 확인함

data("iris") # iris 데이터셋 불러오기

View(iris)# 데이터 확인

str(iris) # 데이터 구조 확인

# 데이터 세트 컬럼 및 관측치 확인
ncol(iris) # 컬럼(행) 개수 출력
nrow(iris) # 열 개수 출력
dim(iris) # 열 행 개수 출력

#데이터 세트 컬러명 확인
ls(iris)

# 데이터 앞부분 값 확인
head(iris)

head(iris, n = 5) # n의 개수 만큼 출력

# 데이터 뒷부분 값 확인
tail(iris)


# 평균, 중앙값 구하기
mean(iris$Sepal.Length)# 데이터셋$컬럼명의 평균
median(iris$Sepal.Length)# 데이터셋$컬럼명의 중앙값


# 최솟값, 최댓값, 범위 구하기
min(iris$Sepal.Length) # 최솟값
max(iris$Sepal.Length)# 최댓값
range(iris$Sepal.Length) # 최솟값과 최댓값의 범위


# 사분위수 구하기
# 사분위수 : 데이터를 4등분한것(사전적 정의)
# R에서는 0%를 포함해서 총 5개가 나옴

quantile(iris$Sepal.Length)

quantile(iris$Sepal.Length, probs = 0.25) # 25%의 값을 출력
quantile(iris$Sepal.Length, probs = 0.50) # 50%의 값을 출력
quantile(iris$Sepal.Length, probs = 0.75) # 75%의 값을 출력
quantile(iris$Sepal.Length, probs = 0.80) # 80%의 값을 출력


# 분산과 표준편차 구하기
# 분산 : 데이터가 평균으로 부터 퍼진 정도를 설명하는 통계량 -> 값이 클수록 평균에서 데이터 값이 퍼진 정도가 넓음, 작을수록 데이터가 평균값에 몰려 있음
# 표준편차 : 데이터 값이 퍼진 정도를 성명하는 통계량 -> 값이 클수록 데이터 값이 넓게 퍼짐을 의미

var(iris$Sepal.Length)# 분산

sd(iris$Sepal.Length) # 표준편차

# psych 패키지 설치 및 로드
 install.packages("psych")
 library(psych)


#첨도와 왜도
# 첨도 : 데이터 분포가 정규분포 대비 뾰족한 정도를 설명하는 통계량 -> 데이터가 어느 정도로 중심에 몰려 있는지를 파악할 수 있음
# 왜도 : 데이터 분포의 비대칭성을 설명하는 통계량 -> 데이터가 어느 방향으로 치우쳐 있는지 도는 대칭을 띄고 있는지 파악 할 수 있음
kurtosi(iris$Sepal.Length) # 첨도
skew(iris$Sepal.Length) # 왜도


# descr 패키지 설치 및 로드
install.packages('descr')
library(descr)


# 빈도 분석하기
freq_test <- freq(iris$Sepal.Length, plot = F)
freq_test
