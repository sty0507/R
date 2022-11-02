# 데이터 재구조화
# 열이 긴 형태 -> 행이 긴 형태 : melt()
# 행이 긴 형태 -> 열이 긴 형태 : cast()

# melt() 형태
# melt(데이터, id.var="기준열", measure.vars="변환열")

# reshape2 패키지 설치
install.packages("reshape2")

# airquality 데이터 셋 확인
head(airquality)
data("airquality")

# 변수명 소문자로 통일하기
names(airquality) <- tolower(names(airquality))
head(airquality)

# 열을 행으로
library(reshape2)
melt_test <- melt(airquality)
# id 값을 지정해주지 않아서 전체가 melt 됨
head(melt_test)


# 기준을 정해 열을 행으로
melt_test2 <- melt(airquality, id.vars= c("month", "wind"), measure.vars="ozone")
head(melt_test2)

# acast() : 데이터를 변형하여 벡터, 행렬, 배열 형태로 반환
# dcast() : 데이터를 변형하여 데이터 프레임 형태로 반환


# 열을 행으로
aq_melt <- melt(airquality, id.vars = c("month", "day"), na.rm=TRUE)
# na.rm : 결측치를 모두 포함해서
head(aq_melt)

# 행을 열로
aq_dcast <- dcast(aq_melt, month + day ~ variable)
head(aq_dcast)

# 행을 변수로
acast(aq_melt, day~month ~ variable)

# cast() 함수로 평균 요약 확인
acast(aq_melt, month ~ variable, mean)

# cast() 함수로 합계 요약 확인
acast(aq_melt, month ~ variable, sum)
