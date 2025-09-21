unfold :: (a -> Bool) -> (a -> b) -> (a -> a) -> a -> [a]
unfold p h t x | p x = []
               | otherwise = h x : unfold p h t (t x)


chop8 :: [a] -> [[a]]
chop8 = unfold (null) (take 8) (drop 8)

mapUnfold :: (a -> b) -> [a] -> [b] 
mapUnfold f = unfold (null)(f.head) tail 

interateUnfold :: (a -> a) -> a -> [a] 
iterateUnfold f = unfold (const False) id f  
