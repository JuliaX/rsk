# plancherelPartition.jl
require("rsk.jl")
function plancherelPartition(n)
## Input: n...size of partition
## Output: lam...random partition of n(with plancherel measure)
p = randperm(n)
P = rsk2(p)
lam = sum(!isnan(P) , 2)
k = sum(lam.>0)
lam = lam[1:k]
end
