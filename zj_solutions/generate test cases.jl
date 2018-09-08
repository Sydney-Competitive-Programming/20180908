using DataFrames, CSV

# generate test cases
srand(1)
vs = abs.(rand(Int8, 1, 1_000_000))
vs_many_rows = abs.(rand(Int8, 1_000, 16))


CSV.write("zj_1_long_row.csv",DataFrame(vs), header=false);
CSV.write("zj_many_short_rows.csv", DataFrame(vs_many_rows), header=false);


vs_soln = waterheight(vs)
