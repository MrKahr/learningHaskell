altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g [] = []
altMap f g (x:xs) =  f x : altMap g f xs 

luhn :: [Int] -> Bool
luhn [] = False 
luhn xs = (sum.map(nineSubtraction).altMap(*1)(*2).reverse) xs `mod` 10 == 0 

nineSubtraction :: (Num a, Ord a) => a -> a
nineSubtraction x | x < 9 = x - 9 
                  | otherwise = x
