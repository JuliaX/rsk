require("randperm2.jl")
require("rand2.jl")
require("rsk2.jl")

n=4^6
m=200
tic()
A = zeros(m,n)
for i=1:m
    A[i,:] = randperm2(n)
    rsk2(A[i,:])
end
toc()

