data Person = Person String Int

greet :: Person -> String
greet (Person age name) = "Hello, " ++ name ++ "! You are " ++ show age ++ " years old."