# plancherelPartition.jl
require("rsk.jl")
require("randperm2.jl")
function plancherelPartition(n)
## Input: n...size of partition
## Output: lam...random partition of n(with plancherel measure)
p = randperm2(n)
P = rsk2(p)
(u,v) = size(P)
lam = zeros(u)
for i=1:u
    if isnan(P[i,1])
        lam = lam[1:i-1]
        break
    end
    for j=1:v
        if isnan(P[i,j])
            break
        end
        lam[i] += 1
    end
end
return (P,lam)
end
