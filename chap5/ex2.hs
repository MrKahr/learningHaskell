grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x,y) | x <- [0..x], y <-[0..y]]

square :: Int -> [(Int, Int)]
square x = [(x,y) | (x,y) <- grid x x, x /= y]

