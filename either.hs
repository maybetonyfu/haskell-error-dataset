left (Left a) = Just a
left (Right _) = Nothing

a :: Either Integer String -> Integer
a e = left e

-- theme: adt
-- goanna results: 3
-- oracle: false
-- intended fix: none