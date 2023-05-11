-- theme: list
standardTrans z =
  case z of
    "shorttitle" -> ["short"]
    "sorttitle" -> ["sorted"]
    "indextitle" -> ["index"]
    "indexsorttitle" -> ["index", "sorted"]
    _ -> z
-- bookTrans :: String -> [String]
bookTrans z =
  case z of
    "title" -> ["booktitle"]
    "subtitle" -> ["booksubtitle"]
    "titleaddon" -> ["booktitleaddon"]
    "shorttitle" -> []
    "sorttitle" -> []
    "indextitle" -> []
    "indexsorttitle" -> []
    _ -> [z]
transformKey x y "author"
  | elem x ["mvbook", "book"] =
    ["bookauthor", "author"]
-- note: this next clause is not in the biblatex manual, but it makes
-- sense in the context of CSL conversion:
transformKey x y "author"
  | x == "mvbook" = ["bookauthor", "author"]
transformKey "mvbook" y z
  | elem y ["book", "inbook", "bookinbook", "suppbook"] =
    standardTrans z
transformKey _ _ x = [x]