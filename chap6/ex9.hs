sumList :: [Int] -> Int

sumList [] = 0
sumlist (x:xs) = x + sumlist xs

takeList :: Int -> [a] -> [a]
takeList 0 _ = [] 
takeList n [] = []
takeList n (x:xs) = x:takeList (n - 1) xs

lastList :: Int -> [a] -> [a] 
lastList n _ | n <= 0 = [] 
lastList _ [] = []
lastList 1 (x:_) = [x] 
lastList n (x:xs) = lastList (n - 1) xs 



