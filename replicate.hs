-- theme: list

replicate :: Int -> a -> [a]
replicate = undefined

g :: [Char] -> Int -> [Char]
g xs n = map (replicate n) xs

-- theme: function, list
-- goanna results: 4
-- oracle: false
-- intended fix: none