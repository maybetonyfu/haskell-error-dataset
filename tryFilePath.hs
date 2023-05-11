-- theme: monad
findFirstExe :: [String] -> IO (Maybe String, [String])
findFirstExe = findFirstExe' []

findFirstExe' fs' []     = return ("", reverse fs')
findFirstExe' fs' (f:fs) = do
  isExe <- doesExecutableExist f
  if isExe
    then return (f, reverse fs')
    else findFirstExe' (f:fs') fs

doesExecutableExist :: String -> IO Bool
doesExecutableExist _ = do
  return True