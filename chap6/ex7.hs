merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x < y = x:merge xs (y:ys) 
                    | x > y = y:merge ys (x:xs) 
                    |otherwise = x:y:merge xs ys
mergesort Ord a => [a] -> [a] 





