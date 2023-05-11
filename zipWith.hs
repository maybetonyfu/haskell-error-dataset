-- theme: list

f :: a -> b -> (a, b)
f x y = (x, y)

g :: [a] -> [b] -> [(a, b)]
g xs ys = zipWith f xs xs