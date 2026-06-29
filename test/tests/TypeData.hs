-- SYNTAX TEST "source.haskell" "Type data declarations"

{-# LANGUAGE TypeData #-}

   type data D1 = MkD1
-- ^^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--      ^^^^ keyword.other.data.haskell

   type data D2 = MkD2_A | MkD2_B
-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--      ^^^^ keyword.other.data.haskell

   type data D3 where { {- hiho -} MkD3 :: D3 }
--      ^^^^ keyword.other.data.haskell
--              ^^^^^ keyword.other.where.haskell
--              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.declaration.data.generalized.haskell

-- When type/data is split over multiple lines, we can't highlight the whole
-- thing as a type data declaration (due to TextMate limitations).
-- The following test ensures we at least highlight it reasonably.
   type
     data D4 = MkD4
--   ^^^^^^^^^^^^^^ meta.declaration.data.algebraic.haskell
--   ^^^^ keyword.other.data.haskell
--   ^^^^ - variable.other.generic-type.haskell
