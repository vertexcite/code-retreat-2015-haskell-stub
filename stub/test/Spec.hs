{-# LANGUAGE ScopedTypeVariables, TemplateHaskell #-}
module Main where

import Test.QuickCheck
import Test.QuickCheck.All
import Lib

prop_revapp :: [Int] -> [Int] -> Bool
prop_revapp xs ys = myrev (xs++ys) == myrev ys ++ myrev xs

return []
main = $quickCheckAll
