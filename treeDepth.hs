-- theme: adt

data Tree a = Empty | Branch a (Tree a) (Tree a)
leaf x = Branch x Empty Empty

isBalancedTree Empty = True
isBalancedTree (Branch _ l r) =
    (countBranches l - countBranches r) == 1
    || (countBranches r - countBranches l) == 1
    && isBalancedTree l && isBalancedTree r

countBranches Empty = 0
countBranches (Branch _ l r) = 1 + l + r
