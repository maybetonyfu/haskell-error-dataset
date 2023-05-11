applyToAll :: [a] -> (a -> b) -> [b]
applyToAll [] _ = []
applyToAll (x:xs) f = f x : applyToAll f xs