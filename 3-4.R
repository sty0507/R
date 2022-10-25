# 반복문 구구단 2단
for(i in 1:9){
  a<- 2*i
  print(a)
}

# 구구단
for(i in 2:9){# 2 ~ 9까지
  for(j in 1:9){
    print(paste(i, " * ", j, " = ", i*j))
  }
}
# paste() : ()안에 것을 모두 문자로 바꿔서 함
# -> "를 추가함

# apply(x, margin, 함수)
# lapply(x, 함수)
# sapply(x, 함수)

# margin -> 1: 행, 2: 열  

#------------------------------------------------------
# apply()함수로 행렬 값 계산

x <- matrix(1:4, 2,2)
x # 2x2의 행렬로 1~4의 값이 들어 있음

apply(x, 1, sum) # 각 행을 더한 값
apply(x, 2, min) # 각 열에서 최솟값을 출력
apply(x, 1, max) # 각 행에서 최댓값을 출력

# iris 데이터 세트 구조 확인하기
iris
str(iris)
View(iris)

# [행, 열] -> [,1:4] = 행 전체, 열 1~4

apply(iris[, 1:4], 2, sum) # 합
apply(iris[, 1:4], 2, mean) # 평균값
apply(iris[, 1:4], 2, min) # 최솟값
apply(iris[, 1:4], 2, max) # 최댓값
apply(iris[, 1:4], 2, median) # 중간값