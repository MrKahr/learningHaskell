pyths :: Int -> [(Int,Int,Int)]
pyths q = [(x,y,z)| x <- [1..q], y <-[1..q], z <- [1..q], x^2 + y^2 == z^2]
