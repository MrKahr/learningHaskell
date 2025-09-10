import Data.Char

main :: IO()
main = putStrLn "Hello World!"

count :: Char -> String -> Int 
count x xs = length [x | x' <- xs, x'== x] 

int2upper :: Int -> Char
int2upper n = chr (ord 'A' + n) 

int2lower :: Int -> Char 
int2lower n = chr (ord 'a' + n) 

isLetter :: Char -> Bool
isLetter c | isLower c = True
           | isUpper c = True
           | otherwise = False

let2int :: Char -> Int
let2int c | isLower c = ord c - ord 'a' 
          | isUpper c = ord c - ord 'A'
          | otherwise = error "malformed character input"

shift :: Int -> Char -> Char
shift n c | isLower c =  int2lower ((let2int c + n) `mod` 26)
          | isUpper c = int2upper ((let2int c + n) `mod` 26)
          | otherwise = c

encode :: Int -> String -> String 
encode n xs = [shift n x | x <- xs]

table :: [Float]
table = [8.1, 1.5, 2.8, 4.2, 12.7, 2.2, 2.0, 6.1, 7.0,
         0.2, 0.8, 4.0, 2.4, 6.7, 7.5, 1.9, 0.1, 6.0,
         6.3, 9.0, 2.8, 1.0, 2.4, 0.2, 2.0, 0.1]

table' :: [Float]
table' = freqs "kdvnhoo lv ixq" 

percent :: Int -> Int -> Float
percent n m =  (fromIntegral n / fromIntegral m) * 100

freqs :: String -> [Float]
freqs xs = [percent (count x xs) n | x <- ['a'..'z']] where n = length (filter Main.isLetter xs)

chisqr :: [Float] -> [Float] -> Float
chisqr os es = sum [((o - e)^2)/e | (o,e) <- zip os es]

rotate :: Int -> [a] -> [a]
rotate n xs = drop n xs ++ take n xs

crack :: String -> String
crack xs 


