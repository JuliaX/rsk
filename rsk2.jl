# rsk.jl

function rsk2(seq)
## Input: seq ... a sequence of whole numbers (all >= 0)
## Output: A partition P capturing large scale sorting structure

n = length(seq)
m1 = convert(Int,round(2*sqrt(n)))
m2 = convert(Int,round(2*sqrt(n)))
P = NaN*ones(m1,m2)

for i=1:n
    new = seq[i]

    for j=1:n
        if j > m2
            P = [P NaN*ones(m1,m2)]
            m2 = 2*m2
        end
        k = 1
        while P[k,j] <= new
            k+=1
            if(k > m1)
                P  = [P ; NaN*ones(m1,m2)]
                m1 = 2*m1
            end
        end

        old = P[k,j]
        P[k,j] = new
        new = old
        if isnan(new)
            break
        end
    end
end

    return P
end
