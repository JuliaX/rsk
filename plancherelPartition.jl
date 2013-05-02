# plancherelPartition.jl
require("rsk.jl")
function plancherelPartition(n)
p = randperm(n)
P = rsk(p,0)
lam = sum(!isnan(P) , 2)
k = sum(lam.>0)
lam = lam[1:k]
end
