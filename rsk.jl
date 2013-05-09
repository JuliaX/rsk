# rsk.jl

function rsk(seq)
## Input: seq ... a sequence of whole numbers (all >= 0)
## Output: A partition P capturing large scale sorting structure
n = length(seq)
m1 = 2
#convert(Int,round(2*sqrt(n)))
m2 = 2
#convert(Int,round(2*sqrt(n)))
P = NaN*ones(m1,m2)
for i=1:n
    new = seq[i]
    for j=1:n
        if j > m2
            P = [P NaN*ones(m1,m2)]
            m2 = 2*m2
        end
        #k = 1
        #while P[k,j] <= new
        #    k+=1
        #    if(k > m1)
        #        P  = [P ; NaN*ones(m1,m2)]
        #        m1 = 2*m1
        #    end
        #end
        a = 1
        b = m1
        while a!=b && a!=b-1
            m = int((a+b)/2)
            if isnan(P[m,j]) || P[m,j] > new
                b = m
            elseif P[m,j] <= new
                a = m
            end
        end
        if a + 1 == b
            if P[b,j] <= new
                k = b+1
            elseif isnan(P[a,j]) || new < P[a,j]
                k = a
            else
                k = b
            end
        end
        if(k>m1)
            P = [P ; NaN*ones(m1,m2)]
            m1 = 2*m1
        end


        #if b!=k
        #    println("hola ", b," ", k)
        #end

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
