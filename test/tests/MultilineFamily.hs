-- SYNTAX TEST "source.haskell" "Multiline type and data families"

{-# LANGUAGE TypeFamilies #-}

type
    family F x
--  ^^^^^^ keyword.other.family.haskell

type
    instance F Int = Bool
--  ^^^^^^^^ keyword.other.instance.haskell

type
  {- testing123 -} instance F Char = Word
--                 ^^^^^^^^ keyword.other.instance.haskell

data
   family D x
-- ^^^^^^ keyword.other.family.haskell

data
   instance D Int = MkD
-- ^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell

newtype
   instance D Bool = MkB Char
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.newtype.algebraic.haskell

data
    instance D Char where
--  ^^^^^^^^ keyword.other.instance.haskell
--                  ^^^^^ keyword.other.where.haskell
      G :: D Char
--    ^ constant.other.haskell
--         ^ ^^^^ storage.type.haskell

class C a where
  type
    family CT a
--  ^^^^^^ keyword.other.family.haskell
  data
    family CD a
--  ^^^^^^ keyword.other.family.haskell

instance C Int where
   type
     instance CT Int = Bool
--   ^^^^^^^^ keyword.other.instance.haskell
   data
     {- hello -} instance CD Int where
--               ^^^^^^^^ keyword.other.instance.haskell
--                               ^^^^^ keyword.other.where.haskell
                   MkCDInt1, MkCDInt2 :: { foo :: Char } -> CD Int
--                 ^^^^^^^^  ^^^^^^^^ constant.other.haskell
--                                         ^^^ variable.other.member.definition.haskell
--                                                ^^^^      ^^ ^^^ storage.type.haskell
                   (:++)   :: CD Int
--                  ^^^ constant.other.operator.prefix.haskell
--                            ^^ ^^^ storage.type.haskell
      {- funny -}  MkCD3 :: CD Int
--                 ^^^^^ constant.other.haskell
--                          ^^ ^^^ storage.type.haskell
