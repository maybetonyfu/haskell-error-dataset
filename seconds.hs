-- theme: tuple
seconds :: [(a,b)] -> [b]
seconds xs = map fst xs