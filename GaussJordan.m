n = 6
A = rand(n,n) # Random matrix_type
I = eye(n,n) # Identify Matrix
detA = det(A)  # Find Determinant 
if(detA != 0), 
  C = [A,I]     # Append Identity Matrix
  reducedC = rref(C) # Find Rref of augmented matrix
  invertedA = reducedC(:,n+1:2*n)  # Inverse(A) = invertedA
else
  disp("A is singular");
endif
