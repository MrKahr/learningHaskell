-- Binary string transmitter example from chapter 7 of Programming
-- in Haskell, Graham Hutton, Cambridge University Press, 2016.

import Data.Char

-- Base conversion

type Bit = Int

bin2int :: [Bit] -> Int
bin2int = foldr (\x y -> x + 2*y) 0

int2bin :: Int -> [Bit]
int2bin 0 = []
int2bin n = n `mod` 2 : int2bin (n `div` 2)

make8 :: [Bit] -> [Bit]
make8 bits = take 8 (bits ++ repeat 0)

-- Transmission

encode :: String -> [Bit]
encode = concat . map (make8 . int2bin . ord)

chop8 :: [Bit] -> [[Bit]]
chop8 []   = []
chop8 bits = take 8 bits : chop8 (drop 8 bits)

-- Added by MHA 
chop9 :: [Bit] -> [[Bit]]
chop9 []   = []
chop9 bits = take 9 bits : chop9 (drop 9 bits)

decode :: [Bit] -> String
decode = map (chr . bin2int) . chop8

transmit :: String -> String
transmit = decode . channel . encode

channel :: [Bit] -> [Bit]
channel = id

-- Added by MHA 
parity :: [Bit] -> Bit
parity bs | odd (sum bs) = 1
          | otherwise = 0

-- Added by MHA
addparity :: [Bit] -> [Bit] 
addparity bs = (parity bs):bs 

-- Added by MHA 
validateparity :: [Bit] -> [Bit] 
validateparity [] =  error "Cannot validate parity bit of empty bit sequence"
validateparity (b:bs) | b == parity bs =  bs 
                      | otherwise = error "Invalid Parity" 

  
