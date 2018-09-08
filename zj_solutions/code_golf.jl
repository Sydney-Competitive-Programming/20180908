d(e) = accumulate(max,e)
r(e) = reverse(e)
w(v) = min.(d(v), r(d(r(v))))

y(v) = begin
    s = copy(v)
    for i in 1:size(v)[1]
        s[i,:] .= w(v[i,:])
    end
    s
end

w(v)
y(vs_many_rows)
