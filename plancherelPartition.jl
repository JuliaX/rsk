# plancherelPartition.jl
require("rsk.jl")
require("randperm2.jl")
function plancherelPartition(n)
## Input: n...size of partition
## Output: lam...random partition of n(with plancherel measure)
p = randperm2(n)
P = rsk(p)
(u,v) = size(P)
lam = zeros(v)
for i=1:v
    if isnan(P[1,i])
        lam = lam[1:i-1]
        break
    end
    for j=1:u
        if isnan(P[j,i])
            break
        end
        lam[i] += 1
    end
end
return lam
end
