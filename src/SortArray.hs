module SortArray
  ( sortArray
  )
where

import qualified Data.List                     as List

type Acc = (Maybe Int, [Int], [Int])

fun :: Int -> Int -> Acc -> Acc
fun x y (Nothing, [], r) | even y    = (Nothing, [], y : r)
                         | x > y     = (Just y, [], r)
                         | otherwise = (Nothing, [], y : r)
fun x y (Just z, l, r) = (Just z, y : l, r)

sortArray :: [Int] -> [Int]
sortArray []       = []
sortArray [x     ] = [x]
sortArray (x : xs) = if odd x
  then
    let fun2 Nothing _ _ = x : sortArray xs
        fun2 (Just z) l r =
          sortArray(sortArray (z : l ++ [x]) ++ r)
        (y, l, r) = foldr (fun x) (Nothing, [], []) xs
    in  fun2 y l r
  else x : sortArray xs
