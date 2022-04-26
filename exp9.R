A <- matrix(c(10, 8, 5, 12), ncol = 2, byrow = TRUE)
A
B <- matrix(c(5, 3, 15, 6), ncol = 2, byrow = TRUE)
B

#Addition:

A + B


#Substraction:

A - B

#Transpose:

t(A)
t(B)

#Multiplication by scaler:

2 * A
A / 2

#Element-wiseMultiplication:

A * B

#Matrix Multiplication:

A %*% B
