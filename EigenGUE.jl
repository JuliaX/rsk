require("randHermite.jl")
n = 200;
samples = 10000;
k = 1;

# Calculate eigenvalues of GUE
tic()
A = zeros(samples,k)
for i=1:samples
    H = randHermite(n);
    E = eigvals(H)
    #E = sort(E,Sort.Reverse)
    #A[i,:] = E[1:k]';
    A[i,:] = max(E)
end
toc()
y = n^(2/3)*(A/(n^(1/2)) - 2)

f = open("data.txt","w")
for el in 1:samples
    println(f,y[el])
end
close(f)
