#require("rsk2.jl")
n=4^6
m =1000
#Calculate a bunch of random permutations
perms = zeros(m,n)
for i=1:m
    #perms[i,:] =
    randperm(n)
end

#test rsk2.jl
#tic()
#for i=1:m
#    P = rsk2(perms[i,:])
#end
#toc()

