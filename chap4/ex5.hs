boolAnd :: Bool -> Bool -> Bool
boolAnd x y = if x == True then if y == True then True else False else False

boolAnd2 :: Bool -> Bool -> Bool
boolAnd2 x y = if x == True then y else False
