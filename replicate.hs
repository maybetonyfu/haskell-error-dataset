-- theme: list

g :: [String] -> Int -> [String]
g xs n = map (replicate n) xs

