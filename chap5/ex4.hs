replicatev2 :: Int -> a -> [a]
replicatev2 x y = [y | _ <- [1..x]] -- We just dont care about the value, just give me y
