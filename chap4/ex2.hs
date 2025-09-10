third:: [a] -> a
third xs = if length xs < 3 then error "List too short!" else head (tail (tail xs))

third_v2:: [a] -> a
third_v2 xs = xs !! 2

third_v3 :: [a]-> a
third_v3 (_:_:x:_) = x 
third_v3 _ = error "List is too short"
