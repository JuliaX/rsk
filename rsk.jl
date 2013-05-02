# rsk.jl

function rsk(seq, isplot)
# Algorithm ... (and visual)

## Input: seq ... a sequence of whole numbers (all >= 0)
## Output: A partition P capturing large scale sorting structure

n = length(seq)
P = NaN*ones(n,n)

for i=1:n
    new = seq[i]

    for j=1:n
        #k = 1
        #for z=1:n
        #    if P[z,j] <= new
        #        k += 1
        #    end
        #end

        k = 1
        while P[k,j] <= new
            k+=1
        end
        #k = sum(P[:,j] .<= new) + 1
        old = P[k,j]
        P[k,j] = new
        new = old
        if isnan(new)
            break
        end
    end

    if isplot==1
        for i=1:n
            for j=1:n
                if(isnan(P[i,j]))
                    break
                else
                    print(P[i,j])
                    print(" ")
                end
            end
            println()
            if(isnan(P[i,1]))
                break
            end
        end
    end
end

    return P
end
