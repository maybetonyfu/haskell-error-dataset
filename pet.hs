-- theme: adt

data Pet = Cat String | Dog String | Snake

petIsDog :: Pet -> Bool
petIsDog Dog = True
petIsDog _ = False