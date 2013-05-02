# randHermite.jl
using Distributions
using Sort
function randHermite(n)

## Input: n...size of matrix beta...parameter of distribution
## Output: E... eigenvalues of GUE matrix

od = zeros(n-1);
d = randn(n);
for i=1:n-1
    od[i] = sqrt(rand(Chisq(2*(n-i)))[1][1])/sqrt(2);
end
H = SymTridiagonal(d,od);
return H
end
