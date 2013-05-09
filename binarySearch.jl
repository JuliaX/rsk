function binarySearch(v,k,a,b)
while a!=b && a!=b-1
    m = int((a+b)/2)
    if isnan(v[m]) || v[m] > k
        b = m
    elseif v[m] <= k
        a = m
    end
end
if a + 1 == b
    if v[b] <= k
        r = b+1
    elseif isnan(v[a]) || k < v[a]
        r = a
    else
        r = b
    end
end
return r
end
