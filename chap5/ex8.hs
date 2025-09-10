-- Remember this function does not come from the standard prelude, it is from the book  
positions :: Eq a => a -> [a] -> [Int]
positions x xs = [i | (x', i) <- zip xs [0..], x == x']

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k',v) <- t, k == k']

positionsv2 x xs = find x (zip xs [y | y <- [0..n]])
 where n = length xs - 1 
