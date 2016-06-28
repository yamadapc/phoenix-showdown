import Control.Monad (mapM_)
import Data.Char (isSpace)
import System.Environment (getArgs)

main = do
    as <- getArgs
    let separator = case as of
                        (s:_) -> s
                        _ -> replicate 8 '-'
    cnts <- getContents
    mapM_ putStrLn (getSeparatorContents separator cnts)

getSeparatorContents separator cnts =
    takeBeforeSeparator (dropBeforeSeparator (lines cnts))
  where
    rtrim = reverse . dropWhile isSpace . reverse
    isSeparator l = separator == rtrim l
    takeBeforeSeparator c = takeWhile (not . isSeparator) c
    dropBeforeSeparator c =
        tailEmpty (dropWhile (not . isSeparator) c)
      where
        tailEmpty [] = []
        tailEmpty (_:ls) = ls
