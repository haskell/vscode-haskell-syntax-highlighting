-- SYNTAX TEST "source.haskell" "Type-level character literals"

type IsSwizzleChar :: Char -> Bool
type family IsSwizzleChar c where
  IsSwizzleChar 'x' = True
--              ^^^ string.quoted.single.haskell
--              ^ punctuation.definition.string.begin.haskell
--                ^ punctuation.definition.string.end.haskell
--              ^^^ - invalid
  IsSwizzleChar '_' = True
--              ^^^ string.quoted.single.haskell
--              ^^^ - invalid
  IsSwizzleChar '1' = True
--              ^^^ string.quoted.single.haskell
--              ^^^ - invalid constant.numeric
  IsSwizzleChar 'X' = True
--              ^^^ string.quoted.single.haskell
--              ^^^ - invalid storage.type.haskell
  IsSwizzleChar 'λ' = True
--              ^^^ string.quoted.single.haskell
--              ^^^ - invalid
  IsSwizzleChar '→' = True
--              ^^^ string.quoted.single.haskell
--              ^^^ - invalid
  IsSwizzleChar '\'' = True
--              ^^^^ string.quoted.single.haskell
--               ^^ constant.character.escape.haskell
--              ^^^^ - invalid
  IsSwizzleChar '\n' = True
--              ^^^^ string.quoted.single.haskell
--               ^^ constant.character.escape.haskell
  IsSwizzleChar '\x41' = True
--              ^^^^^^ string.quoted.single.haskell
--               ^^^^ constant.character.escape.hexadecimal.haskell
  IsSwizzleChar _   = False


type family MatrixField x mat cs where
  MatrixField _ mat (Just '( 'c', i )) = 1
--                        ^ keyword.operator.promotion.haskell
--                           ^^^ string.quoted.single.haskell
--                           ^^^ - invalid
--                                ^ variable.other.generic-type.haskell
  MatrixField x mat (Just '( '_', ij )) = 2
--                           ^^^ string.quoted.single.haskell
--                           ^^^ - invalid
  MatrixField x mat (Just '( '1', ij )) = 3
--                           ^^^ string.quoted.single.haskell
--                           ^^^ - invalid


f :: Proxy 'x' -> Proxy '\'' -> Proxy 'λ'
--         ^^^ string.quoted.single.haskell
--                      ^^^^ string.quoted.single.haskell
--                                    ^^^ string.quoted.single.haskell
--   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
g = f @'x' @'_'
--     ^^^ string.quoted.single.haskell
--          ^^^ string.quoted.single.haskell
--    ^^^^^^^^^ - invalid
