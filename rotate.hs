-- theme: list

rotate1 :: [a] -> [a]
rotate1 x = tail x ++ [head x]

rotate1Back :: [a] -> [a]
rotate1Back x = last x : init x


rotate :: [a] -> Int -> [a]
rotate [] _ = []
rotate x 0 = x
rotate x y
  | y > 0 = rotate rotate1 (y-1)
  | otherwise = rotate rotate1Back x (y+1)