# testRSKBigInt.jl

require("rsk.jl")
require("ithPermutation.jl")
function testRSKBigInt(n, samples, k)

index = rand((1:factorial(n))-1, samples)

tic()
B = zeros(samples,k)
for i=1:samples
    P = rsk(convert(Array{Int}, ithPermutation(n,index[i])),0)
    lam = sum(!isnan(P) , 2)
    z = sum(lam.>0)
    lam = lam[1:z]
    B[i,:] = lam[1:k]'
end
toc()

f = open("data.txt","w")
for el=1:samples
    println(f,B[el,1])
end
close(f)
return B
end
