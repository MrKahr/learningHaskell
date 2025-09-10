fac :: Int -> Int 
fac 0 = 1
fac n | n > 0 = fac (n - 1) * n
      | otherwise = error "Factioral not defined for negative integers"
