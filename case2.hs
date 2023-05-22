x y =
  case y of
    Nothing -> Just 0
    Just n -> n * 2

-- theme: basics
-- goanna results: 2
-- oracle: false
-- intended fix: none