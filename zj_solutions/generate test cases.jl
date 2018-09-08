# using DataFrames, CSV
#
# # generate test cases
# srand(1)
# vs = abs.(rand(Int8, 1, 1_000_000))
# vs_many_rows = abs.(rand(Int8, 1_000, 16))
#
#
# CSV.write("zj_1_long_row.csv",DataFrame(vs), header=false);
# CSV.write("zj_many_short_rows.csv", DataFrame(vs_many_rows), header=false);
#
#
# vs_soln = waterheight(vs)


using DataFrames, CSV

vs_df = CSV.read("zj_many_rows_short.csv")

sa = size(vs_df)
v = Int8[]
for i in 1:sa[2]
    push!(v, a[1,i])
end
print(v)
