halve::[a] -> ([a],[a])
halve xs = splitAt (length xs `div` 2) xs
-- Fun experiment
add' ::Num a => a -> a -> a
add' x y = x + y
add''= add' 1.0 

