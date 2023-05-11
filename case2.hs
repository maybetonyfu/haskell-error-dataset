-- theme: basics
x y =
  case y of
    Nothing -> Just 0
    Just n -> n * 2