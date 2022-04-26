A <- matrix(seq(19,11), nrow = 3, ncol = 3)

#Power of matrix:

install.packages("expm")
library(expm)
A %^% 2

install.packages("matrixcalc")
library(matrixcalc)
matrix.power(A, 2)

A %*% A
A^2

Determinant of Matrix:

  det(A)

Inverse of Matrix:

  M <- solve(A)
M

A %*% M
solve(A, M)

Rank of Matrix:

  qr(A)$rank

library(Matrix)
rankMatrix(A)[1]
