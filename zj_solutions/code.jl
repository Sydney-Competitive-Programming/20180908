using CSV, BenchmarkTools

a = CSV.read("datga.csv", header=false)
sa = size(a)
v = Int8[]
for i in 1:sa[2]
    push!(v, a[1,i])
end
print(v)
