setwd("D:/git/20180908")
set.seed(1)
r = sample(128, 16*1e6,T)
mr = matrix(r, ncol=16)
write.csv(mr, "zj_many_rows_short.csv")

r = sample(128, 1e6,T)
mr = matrix(r, nrow=1)
write.csv(mr, "zj_1_row_long.csv")
