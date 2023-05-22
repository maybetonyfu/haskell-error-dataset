-- theme: adt, tuple

data Meal = Meal Bool Int (Int, Int)

mealPrice (Meal dineIn price price') =
  if dineIn
    then price'
    else fst price + snd price

actual = mealPrice (Meal False 0 (15, 10))
expect = 25

test :: Bool
test = actual == expect

-- theme: adt
-- goana resultsL 12
-- oracle: true
-- intended fix: 2
