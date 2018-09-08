waterheight(v) = begin
    a = accumulate(max, v)
    b = reverse(accumulate(max,reverse(v)))
    sum(v .- min.(a,b))
end

@benchmark waterheight(v)

# generate some test cases


waterheightallrows(vs) = begin
    # res = copy(vs)
    # for i in 1:size(vs)[1]
    #     res[1,:] .= waterheight(vs[i,:])
    # end
    # res
    [waterheight[vs[i,:]] for i in 1:size(vs)[1]
end

@time waterheightallrows(vs)
@benchmark waterheightallrows(vs)


@time waterheightallrows(vs_many_rows)
@benchmark waterheightallrows(vs_many_rows)

sum(waterheight(v) .- v)
