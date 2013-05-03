require("rand2.jl")
function randperm2(n::Integer)
    a = Array(typeof(n), n)
    a[1] = 1
    for i = 2:n
        j = rand2(1:i)
        a[i] = a[j]
        a[j] = i
    end
    return a
end
