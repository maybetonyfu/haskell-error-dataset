u :: Int
u = 0

v :: Float
v = 0.1

z = True
y = if z then u else v

-- theme: basics
-- goanna results: 4
-- oracle: false
-- intended fix: none