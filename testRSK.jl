# testRSK.jl

require("rsk2.jl")
require("plancherelPartition.jl")
function testRSK(n, samples, k)

tic()
B = zeros(samples,k)
for i=1:samples
    lam = plancherelPartition(n)'
    B[i,:] = lam[1:k]
end
toc()

f = open("data.txt","w")
for el=1:samples
    println(f,B[el,1])
end
close(f)
return B
end
