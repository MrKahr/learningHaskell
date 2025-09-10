main::IO()
main  = putStrLn "Hello World"
second xs = head (tail xs)
swap (x,y) = (y,x)
pair x y = (x,y)
double x = x * 2
palindrome xs = reverse xs == xs
twice f x = f (f x)
fource f x = f ( f ( f (f (x))))
equalityBool f g = (f True == g False) && (f False == g False) 
