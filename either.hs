-- theme: adt
left (Left a) = Just a
left (Right _) = Nothing

a :: Either Integer String -> Integer
a e = left e