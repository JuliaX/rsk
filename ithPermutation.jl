function ithPermutation(n, i)
    m = BigInt(i)
    fact = Array(BigInt,1,n)
    fact[1] = 1
    for k=2:n
        fact[k] = fact[k-1]*(k-1);
    end

    perm = Array(BigInt,1,n)
    for k=1:n
        perm[k] = div(m,fact[n-k+1]) + 1
        m = rem(m, fact[n-k+1])
    end

    for k=n:-1:2
        for j=(k-1):-1:1
            if perm[j] <= perm[k]
                perm[k] += 1
            end
        end
    end

    return perm
end
