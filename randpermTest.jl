n = 4^6;
samples = 5000;

# randperm
tic()
A  = zeros(samples,n)
for i=1:samples
    A[i,:] = randperm(n)
end
toc()
