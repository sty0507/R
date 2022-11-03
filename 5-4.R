# 결측치 확인
x <- c(1, 2, NA, 4, 5)
x
sum(x)
is.na(x)
table(is.na(x))


# 결측치 제외하고 연산
x <- c(1, 2, NA, 4, 5)
x
sum(x)
is.na(x)
sum(x, na.rm = T) # na값 remove를 True로


# airquality 데이터 세트 결측치 확인
data(airquality)
is.na(airquality)


# 데이터 세트에 있는 결측치 전체 개수 확인
sum(is.na(airquality))


# 컬럼별 결측치 개수 확인
colSums(is.na(airquality))


# 결측치가 있는 행 제거
data(airquality)
na.omit(airquality)


# 결측치 0으로 대체
data(airquality)
airquality[is.na(airquality)] <- 0
colSums(is.na(airquality))


# 이상치 확인
data(mtcars)
boxplot(mtcars$wt)


# 상자 그림의 기술통계량 확인
boxplot(mtcars$wt)$stats


# 이상치 확인
mtcars$wt > 5.25

mtcars$wt <- ifelse(mtcars$wt > 5.25, NA, mtcars$wt)
mtcars$wt