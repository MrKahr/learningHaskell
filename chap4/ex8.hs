luhnDouble :: Int -> Int
luhnDouble x |  2 * x  > 9 = 2 * x - 9
             | otherwise = 2 * x

luhn :: Int -> Int -> Int -> Int -> Bool 
luhn x y q z | mod (luhnDouble x + y + luhnDouble q + z) 10 == 0 = True
             | otherwise  = False 
