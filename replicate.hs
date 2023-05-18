-- theme: list

replicate :: Int -> a -> [a]
replicate = undefined

g :: [Char] -> Int -> [Char]
g xs n = map (replicate n) xs
