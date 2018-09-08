waterheight(v) = begin
    a = accumulate(max, v)
    b = reverse(accumulate(max,reverse(v)))
    sum(min.(a,b) .- v)
end


waterheightallrows(vs) = begin
    # res = copy(vs)
    # for i in 1:size(vs)[1]
    #     res[1,:] .= waterheight(vs[i,:])
    # end
    # res
    [waterheight[vs[i,:]] for i in 1:size(vs)[1]]
end


if false
    @benchmark waterheight(v)

    # generate some test cases

    @time waterheightallrows(vs)
    @benchmark waterheightallrows(vs)


    @time waterheightallrows(vs_many_rows)
    @benchmark waterheightallrows(vs_many_rows)

    sum(waterheight(v) .- v)
end
