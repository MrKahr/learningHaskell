-- Lecture exercises given in lecture 12, Types and Classes 
-- Exercise 1
data Nat = Zero | Succ Nat 

add :: Nat -> Nat -> Nat
add Zero n = n
add (Succ m) n = Succ (add m n)

multiply :: Nat -> Nat -> Nat
multiply Zero m = Zero 
multiply (Succ n) m = add (multiply n m) m 

-- Exercise 2
data Expr = Val Int | Add Expr Expr | Multiply Expr Expr | Division Expr Expr

value :: Nat -> Int 
value (Val n) = n
value (Add n m) = value n + value m
value (Mutliply n m) = value n * value m
value (Divide _ 0) = error "Cannot divide by 0"
value (Divide n m) = value n / value m

folde f g =  

-- Exercise 3 
data Leaf a  = Val Int
data Tree a = Leaf a | Node (Tree a) (Tree a) 
data Node (Tree a) (Tree a) = (Tree a) a (Tree a) 








