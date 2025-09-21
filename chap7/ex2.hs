allv2 :: (a -> Bool) -> [a] -> Bool
allv2 p = and . map p

anyv2 :: (a -> Bool) -> [a] -> Bool
anyv2 p = or . map p

takeWhilev2 :: (a -> Bool) -> [a] -> [a]
takeWhilev2 _ [] = [] 
takeWhilev2 p (x:xs) | p x = x : takeWhilev2 p xs
                     | otherwise = xs
dropWhilev2 :: (a -> Bool) -> [a] -> [a]
dropWhilev2 _ [] = []
dropWhilev2 p (x:xs) | p x = dropWhile p xs
                     | otherwise = x:xs
 

