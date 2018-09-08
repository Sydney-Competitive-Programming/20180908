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



col2vec(df) = begin
    sa = size(df)
    v = Int16[]
    for i in 1:sa[2]
        push!(v, df[1,i])
    end
    v
end

vs_df = CSV.read("zj_many_rows_short.csv", header=false)

solution = [waterheight(vs_df[i,:] |> col2vec) for i in 1:size(vs_df)[1]]
soln_df = DataFrame(soln = solution)
CSV.write("zj_solution_short_rows.csv",soln_df, header=false)



vs_df = CSV.read("zj_1_row_long.csv", header=false)
solution = [waterheight(vs_df[i,:] |> col2vec) for i in 1:size(vs_df)[1]]
soln_df = DataFrame(soln = solution)
CSV.write("zj_solution_long_row.csv",DataFrame(solution), header=false)
