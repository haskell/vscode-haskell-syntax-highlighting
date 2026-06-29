-- SYNTAX TEST "source.haskell" "GADT constructors"

data GADT a  where
    Constr :: A -> B -> GADT a
--  ^^^^^^ constant.other.haskell
--            ^    ^    ^^^^ storage.type.haskell

data D a where D :: Int -> D String
--             ^ constant.other.haskell
--                  ^^^    ^ ^^^^^^ storage.type.haskell

data Expr a where
    I   :: Int  -> Expr Int
--  ^ constant.other.haskell
--         ^^^ storage.type.haskell
    B   :: Bool -> Expr Bool
--  ^ constant.other.haskell
--         ^^^^ storage.type.haskell
    Add :: Expr Int
--  ^^^ constant.other.haskell
--         ^^^^ storage.type.haskell
        -> Expr Int -> Expr Int
--         ^^^^ storage.type.haskell
    Mul :: Expr Int
--  ^^^ constant.other.haskell
--         ^^^^ storage.type.haskell
        -> Expr Int -> Expr Int
--         ^^^^ storage.type.haskell
    Eq
--  ^^ constant.other.haskell
      :: Eq a =>
--       ^^ storage.type.haskell
        Expr a -> Expr a -> Expr Bool
--      ^^^^ storage.type.haskell
