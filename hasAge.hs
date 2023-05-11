data Person = Person String Int

class HasAge a where
  ageOf :: a -> Int

instance HasAge Person where
  ageOf (Person _ age) = age

olderThan :: a -> a -> Bool
olderThan x y = ageOf x >= ageOf y
