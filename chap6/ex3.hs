(^) :: Int -> Int -> Int 
x ^ 0 = 1 
x ^ y | y > 0 = x * (x^(y - 1))
