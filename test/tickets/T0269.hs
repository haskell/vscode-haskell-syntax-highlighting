-- SYNTAX TEST "source.haskell" "'where' inside a comment in a data declaration"

{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GADTs #-}

data D -- where
--        ^^^^^ - keyword.other.where.haskell
 {- where -}
--  ^^^^^ - keyword.other.where.haskell
    = -- where {- where -} --where
--  ^ keyword.operator.eq.haskell
--       ^^^^^^^^^^^^^^^^^^^^^^^^^ - keyword.other.where.haskell
      A
--    ^ constant.other.haskell
    |
--  ^ keyword.operator.pipe.haskell
      B
--    ^ constant.other.haskell
    deriving stock Eq
--  ^^^^^^^^ keyword.other.deriving.haskell
--           ^^^^^ keyword.other.deriving.strategy.stock.haskell
--                 ^^ storage.type.haskell
