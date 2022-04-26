#Write a script that prints "Hello" if the variable x is equal to 1:
x <- 1

if (x ==1){
  print("Hello")
}

#Write a script that will print "Even Number" if the variable x is an even number,
#otherwise print "Not Even":
x <- 3 # Change x to test

if (x%%2 == 0){
  print('Even Number')
}else{
  print('Not Even')
}

#Write a script that will print 'Is a Matrix' if the variable x is a matrix,
#otherwise print "Not a Matrix". Hint: You may want to check out help(is.matrix)
x <- matrix()

if (is.matrix(x)){
  print('Is a Matrix')
}else{
  print("Not a Matrix")
}


#Create a script that given a numeric vector x with a length 3,
#will print out the elements in order from high to low.
#You must use if,else if, and else statements for your logic.
x <- c(3,7,1)

if (x[1] > x[2]){
  fir <- x[1]
  sec <- x[2]
} else {
  fir <- x[2]
  sec <- x[1]
}
if ( x[3] > fir & x[3] > sec ) {
  thi <- sec
  sec <- fir
  fir <- x[3]
} else if ( x[3] < fir & x[3] < sec ) {
  thi <- x[3]
} else {
  thi <- sec
  sec <- x[3]
}

print(paste(fir, sec, thi))

#Write a script that uses if,else if, and else statements to print
#the max element in a numeric vector with 3 elements.
x <- c(20, 10, 1)

if (x[1] > x[2] & x[1] > x[3] ) {
  print(x[1] )
} else if (x[2] > x[3] ) {
  print(x[2])
} else {
  print(x[3])
}

