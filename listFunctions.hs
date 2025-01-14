last' :: [a] -> a
last' [x] = x
last' (x:xs) = xs

-- Takes the first n elements from a list
take' :: Int -> [a] -> [a] 
take' n [] = []
take' n (x:xs) = x ++ (take' (n - 1) x)

-- theme: list
-- goanna results: 4/7
-- oracle: true
-- intended fix: 1/2