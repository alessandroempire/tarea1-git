import              System.Environment      (getArgs)
import              Data.List               

main = do
    (fileName : _ ) <- getArgs
    input <- readFile fileName
    let dup  = nub $ concat $ map duplicados (lines input)
        all  = ['A' .. 'Z']
        ans  = all \\ dup
    print $ "Las letras que nunca aparecen repetidas son:"
    mapM_ print ans

duplicados :: Eq a => [a] -> [a] 
duplicados []  = []
duplicados [x] = []
duplicados (x : xs) 
    | x == head xs  = [x] ++ duplicados (tail xs)
    | otherwise     = duplicados xs 
