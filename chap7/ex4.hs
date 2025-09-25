dec2int :: [Int] -> Int
dec2int = foldl (\x xs -> 10 * x + xs) 0 
 


