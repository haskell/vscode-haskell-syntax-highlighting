-- SYNTAX TEST "source.haskell" "OPAQUE pragma"

f :: Int -> Int
f x = 3 * x
{-# OPAQUE f #-}
--  ^^^^^^ keyword.other.preprocessor.haskell
