x <- 10
print(x)

y <- 5
print(x)

z <- "10"
print(z)

b <- x + y
print(b)

# 1부터 100까지 더한 값
a <- sum(1:100)
print(a)

# 오늘 날짜
print(Sys.Date())

# 숫자 3개 곱하기
multi_three_return <- function(x, y,z){
  res <- x*y*z
# cat(res) # 출력
  return(res)
}
re <- multi_three_return(3,5,6)
print(re)
