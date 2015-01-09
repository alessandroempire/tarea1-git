
main = do
    (fileName : ) <- getArgs
    input <- readFile fileName
