mapfoldr f = foldr (\x xs -> f x:xs) [] 

filterfoldr p = foldr (\x xs -> if p x then x:xs else xs) []
