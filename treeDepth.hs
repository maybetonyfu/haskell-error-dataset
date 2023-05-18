-- theme: adt

data Tree a = Empty | Branch a (Tree a) (Tree a)
leaf x = Branch x Empty Empty

countBranches Empty = 0
countBranches (Branch _ l r) = 1 + l + r
