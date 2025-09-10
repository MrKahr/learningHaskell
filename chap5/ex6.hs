factors :: Int -> [Int]
factors n = [x | x <-[1..n], (n `mod` x) == 0]

perfects :: Int -> [Int]
perfects n = [z | z <- [1..n], sum (init (factors z)) == z]
