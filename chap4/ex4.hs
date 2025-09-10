(##) :: Bool -> Bool -> Bool
False ## False = False
_ ## _ = True


(££) :: Bool -> Bool -> Bool
False ££ b = b 
True ££ _ = True

a ¤¤ b | a == b = a
       | otherwise = True
