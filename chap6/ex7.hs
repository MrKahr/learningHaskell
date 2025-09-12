first (x,_) = x
second (_,y) = y

merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x < y = x:merge xs (y:ys) 
                    | x > y = y:merge ys (x:xs) 
                    | otherwise = x:y:merge xs ys

halve :: [a] -> ([a],[a])
halve [] = ([],[])
halve xs = splitAt ((length xs `div` 2)) xs  

mergesort :: Ord a => [a] -> [a] 
mergesort [] = []
mergesort [x] = [x] --Initially forgot this case 
mergesort xs = merge (mergesort ys) (mergesort zs) where (ys,zs) = halve xs 
