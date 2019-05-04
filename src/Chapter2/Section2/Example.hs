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
              in if null (tail list)
              then (h, h)
              else ( if h > t_max then h else t_max
                      , if h < t_min then h else t_min) 
                      where t = maxmin(tail list)
                            t_max = fst t 
                            t_min = snd t

data Client = GovOrg String
            | Company String Integer Person String
            | Individual String String Bool
            deriving Show

data Person = Person String String
            deriving Show

data Gender = Male | Female | Unknown
            deriving Show
