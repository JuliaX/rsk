function rand2{T<:Integer}(r::Range1{T})
    lo = r[1]
    hi = r[end]

    m = typemax(T)
    s = abs(rand(T))
    if (hi-lo == m)
        return s + lo
    end
    r = hi-lo+1
    if (r&(r-1))==0
        # power of 2 range
        return s&(r-1) + lo
    end
    # note: m>=0 && r>=0
    lim = m - rem(rem(m,r)+1, r)
    while s > lim
        s = abs(rand(T))
    end
    return rem(s,r) + lo
end
