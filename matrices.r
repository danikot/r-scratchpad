A <- matrix(1:10,nrow=5)
A
B <- matrix(21:30,nrow=5)
C <- matrix(21:40,nrow=2)
B
C
nrow(A)
ncol(A)
dim(A)

A+B
A*B
A==B

ncol(A)
nrow(B)
nrow(t(B))

#transposes, or flips, the matrix

A %*% t(B)
#dot product

LETTERS
letters
colnames(C) <- LETTERS[1:10]
rownames(C) <- c("Top","Bottom")

