elem' :: (Eq a) => a -> [a] -> Bool
elem' a = False
elem' a (x:xs)
    | a == x    = True
    | otherwise = a `elem'` xs


-- Check if an item doesn't appear in a list.
-- This function should be identical to
-- the standard elem function in prelude.
notElem' :: (Eq a) => a -> [a] -> Bool
notElem' a xs = not (elem' a)