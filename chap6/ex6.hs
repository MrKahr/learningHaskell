andv2 :: [Bool] -> Bool
andv2 [] = True -- Identity element, does nothing truth value of the expression 
andv2 (x:xs) = x && andv2 xs 

--- you needed more base cases 
concatv2 :: [[a]] -> [a]
concatv2 [] = []
-- redundant, base case when we have emptied list of lists concatv2 [[]] = []
-- already handleded by [[x],[]], concatv2 [[x]] = [x]
concatv2 (x:xs) = x ++ concatv2 xs 

replicatev2 :: Int -> a -> [a]
replicatev2 n m | n <= 0 = []
                | n > 0 = [m] ++ replicate (n - 1) m 


-- This implementation is wrong, it does not handle cases such as select 8 [1,2] 
selectnv1 :: [a] -> Int -> a
selectnv1 [] _ = error "Cannot select element from empty list"
selectnv1 (x:xs) 0 = x
selectnv1 xs n | n < 0 =  error "Cannot use negative index to select from list"
               | otherwise = selectnv1 xs (n - 1)


selectnv2 :: [a] -> Int -> a
selectnv2 [] _ = error "Cannot select element from empty list" 
selectnv2 (x:_) 0 = x --Calls should only happen for non-empty lists
selectnv2 (_:xs) n | n < 0 =  error "Cannot use negative index to select from list" 
                   | otherwise = selectnv2 xs (n - 1)


isanelem :: Eq a => a -> [a] -> Bool
isanelem _ [] = False
isanelem x (y:ys) | x == y = True
                  | otherwise =  isanelem x ys

