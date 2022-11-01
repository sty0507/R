# 데이터 전처리, 데이터 핸들링
library(dplyr)
library(readxl)

exdata1 <- read_excel("Sample1.xlsx")
exdata1

# 선택한 변수 추출
a <- exdata1 %>% select(ID)
a

# 선택한 변수 여러 개 추출
exdata1 %>% select(ID, AREA, Y21_CNT)

# 선택한 변수 제외하고 추출
exdata1 %>% select(-AREA)

exdata1 %>% select(-AREA, -Y21_CNT)


# 조건에 만족하는 데이터만 추출
exdata1 %>% filter(AREA == '서울')

exdata1 %>% filter(AREA == '서울' & Y21_CNT >= 10)

# 오름차순 정렬
exdata1 %>% arrange(AGE)

# arrange()는 기본이 오름차순

# 내림차순 정렬
exdata1 %>% arrange(desc(Y21_CNT))


# 중첩 정렬
exdata1 %>% arrange(AGE, desc(Y21_CNT))
# 먼저 AGE를 기준으로 정렬 후 AGE에서 같은 값이 있으면 Y21_CNT로 정렬함

# 변수 값 합산
exdata1 %>% summarise(TOT_Y21_CNT = sum(Y21_AMT))

# 변수 값을 그룹별로 합산
exdata1 %>% group_by(AREA) %>% summarise(SUM_Y21_AMT = sum(Y21_AMT))
# AREA로 그룹을 묶고 거기서 Y_21_AMT를 합해서 출력
exdata1 %>% group_by(AREA) %>% summarise(SUM_Y21_AMT = sum(Y21_AMT)) %>% arrange(desc(SUM_Y21_AMT))


# 엑셀 파일 불러오기
library(readxl)
m_history <- read_excel("Sample2_m_history.xlsx")
f_history <- read_excel("Sample3_f_history.xlsx")

View(m_history)
View(f_history)


# 테이블 세로로 결합
exdata_bindjoin <- bind_rows(m_history, f_history)
View(exdata_bindjoin)


jeju_y21_history <- read_excel("Sample4_y21_history.xlsx")
jeju_y20_history <- read_excel("Sample5_y20_history.xlsx")
View(jeju_y21_history)
View(jeju_y20_history)

# 첫번째 테이블 기준으로 가로 결합
bind_col <- left_join(jeju_y21_history, jeju_y20_history, by="ID")
View(bind_col)

# 키변수가 동일할 때만 가로 결합
bind_col_inner <- inner_join(jeju_y21_history, jeju_y20_history, by="ID")
View(bind_col_inner)

bind_col_full <- full_join(jeju_y21_history, jeju_y20_history, by="ID")
View(bind_col_full)
