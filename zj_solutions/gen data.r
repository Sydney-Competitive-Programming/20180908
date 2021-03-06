setwd("D:/git/20180908")
library(data.table)
set.seed(1)
r = sample(128, 16*1e6,T)
mr = matrix(r, ncol=16)
write.csv(mr, "zj_many_rows_short.csv")

mr1 = data.table(mr)
fwrite(mr1, "zj_many_rows_short.csv",col.names = F)

r = sample(128, 1e6,T)
mr = matrix(r, ncol=1)
mr1 = data.table(mr)
fwrite(mr1, "zj_1_row_long2.csv",col.names = F)
