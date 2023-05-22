distence x y = (x + y) * (x - y)

totalDistance xs ys = zipWith distence xs ys

d :: Int
d = totalDistance [1 ,3] [2, 4]

-- theme: list
-- goanna results: 3
-- oracle: false
-- intended fix: none
