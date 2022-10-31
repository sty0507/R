# dplyr 패키지 설치 및 로드
install.packages("dplyr")
library(dplyr)

# 내장 데이터 불러옴
data(mtcars)
mtcars

# mtcars 데이터 세트 구조 확인
nrow(mtcars)
str(mtcars)

# 조건에 맞는 데이터 추출
filter(mtcars, cyl < 4)

# 두가지 조건에 맞는 데이터를 필터링
filter(mtcars, cyl >=6 & mpg > 20)

# 지정한 변수만 추출
head(select(mtcars, am, gear))
select(mtcars, am, gear)

# 오름차순 정렬
head(arrange(mtcars, wt))
arrange(mtcars, wt)

# 오름차순 정렬한 후 내림차순 정렬
head(arrange(mtcars, mpg, desc(wt)))

# 새로운 열 추가
head(mutate(mtcars, years="1974"))
head(mutate(mtcars, mpg_rank = rank(mpg)))

# 중복 값 제거
distinct(mtcars, cyl)

distinct(mtcars, gear)


# 여러개 열에서 중복 값 제거
distinct(mtcars, cyl, gear)

# 데이터 요약
summarise(mtcars, cyl_mean = mean(cyl), cyl_min = min(cyl), cyl_max = max(cyl))

summarise(mtcars, mean(cyl), min(cyl), max(cyl))

# 그룹별로 요약
gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n())


gr_cyl <- group_by(mtcars, cyl)
summarise(gr_cyl, n_distinct(gear))


# 샘플 데이터 10개 추출
sample_n(mtcars, 10)

# 전체 데이터의 20%를 샘플로 추출
sample_frac(mtcars, 0.2)

# 파이프 연산자로 그룹별 요약
group_by(mtcars, cyl) %>% summarise(n())

# 파이프 연산자 없이 순위 기준으로 정렬
mp_rank<-mutate(mtcars, mpg_rank = rank(mpg))
arrange(mp_rank, mpg_rank)

# 파이프 연산자 사용하여 순위 기준으로 정렬
mutate(mtcars, mpg_rank = rank(mpg)) %>% arrange(mpg_rank)

nrow(mtcars)

mtcars %>% nrow()
mtcars
mtcars %>% sample_n(10)
