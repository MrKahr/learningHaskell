euclid :: Int -> Int -> Int 
euclid n m | n < 0 || m < 0 = error "Negative integers cannot use to eval divisor" 
           | n == m = n
           | n < m = euclid n (m - n)
           | n > m = euclid (n - m) m
           | otherwise = error "divisor cannot be evaluated" 
