-- Naive version 
listComp :: (a -> Bool) -> (a -> b) -> [a] -> [b] 
listComp p f xs = map f (filter p xs)

-- Composition + partial application 
listCompIdeo p f = map f . filter p

