# testRSK.jl
require("plancherelPartition.jl")
function testRSK(n, samples, k)

tic()
B = zeros(samples,k)
for i=1:samples
    lam = plancherelPartition(n)
    B[i,:] = lam[1:k]
end
toc()

f = open("data.txt","w")
for el=1:samples
    for j=1:k
        print(f,B[el,j], " ")
    end
    println(f)
end
close(f)
return B
end
