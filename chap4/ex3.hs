safetail :: [a] -> [a]
safetail xs = if null xs then [] else tail xs

safetail_v2 :: [a] -> [a]
safetail_v2 xs | null xs = []
               | otherwise = tail xs

safetail_v3 :: [a] -> [a]
safetail_v3 [] = []
safetail_v3 xs = tail xs 
 
