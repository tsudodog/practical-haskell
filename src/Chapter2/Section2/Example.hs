module Chapter2.Section2.Example where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst = if not (null lst) 
                   then head lst 
                   else "empty"



lst1 +++ lst2 = if (null lst1)
                then lst2
                else (head lst1): (tail lst1 +++ lst2)

reverseList list = if (null list)
                then []
                else reverseList (tail list) +++ [head list]

-- maxmin list = if (null list)
--               then (head list, head list)
--               else ( if (head list) > fst (maxmin (tail list))
--                      then head list
--                      else fst (maxmin (tail list))
--                    , if (head list) < snd (maxmin (tail list))
--                      then head list
--                      else snd (maxmin (tail list))
--                    )

maxmin list = let h = head list