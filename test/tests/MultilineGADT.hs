-- SYNTAX TEST "source.haskell" "Multiline GADT declaration"

    data G (a :: A) b (c :: C) :: Type
--  ^^^^ keyword.other.data.haskell
--          ^          ^ variable.other.generic-type.haskell
--            ^^         ^^    ^^ keyword.operator.double-colon.haskell
--       ^       ^          ^     ^^^^ storage.type.haskell
      where
--    ^^^^^^ keyword.other.where.haskell
      A :: G a b c
--    ^ constant.other.haskell
--      ^^ keyword.operator.double-colon.haskell
--         ^ storage.type.haskell
--           ^ ^ ^ variable.other.generic-type.haskell
      (:&) :: G A B c
--     ^^ constant.other.operator.prefix.haskell
--         ^^ keyword.operator.double-colon.haskell
--            ^ ^ ^ storage.type.haskell
--                  ^ variable.other.generic-type.haskell
      (:!!!!!!!!!!!!!!!!!!!!!!!!)
--     ^^^^^^^^^^^^^^^^^^^^^^^^^ constant.other.operator.prefix.haskell
        :: a -> b -> G a b c
--      ^^ keyword.operator.double-colon.haskell
--                   ^ storage.type.haskell
--         ^    ^      ^ ^ ^ variable.other.generic-type.haskell


    data G a
      where { MkG1 :: { fld :: Int } -> G Int;
--    ^^^^^ keyword.other.where.haskell
--            ^^^^ constant.other.haskell
--                      ^^^ variable.other.member.definition.haskell
--                      ^^^ - variable.other.generic-type.haskell
      MkG2 :: { fld2 :: Char } -> G Bool; MkG3 :: G Char
--    ^^^^                                ^^^^ constant.other.haskell
--              ^^^^ variable.other.member.definition.haskell
--              ^^^^ - variable.other.generic-type.haskell
      }


    data G1 a where { MkG11 :: G1 Int;
--            ^^^^^ keyword.other.where.haskell
--                    ^^^^^ constant.other.haskell
--                             ^^ ^^^ storage.type.haskell
      MkG12 :: G1 Bool; MkG12 :: G1 Char
--    ^^^^^             ^^^^^ constant.other.haskell
--             ^^ ^^^^           ^^ ^^^^ storage.type.haskell
      }


    data G1 a {- hi -} where {- hi -} { {- hi -} MkG11 :: G1 Int;
--                     ^^^^^ keyword.other.where.haskell
--                                               ^^^^^ constant.other.haskell
--                                                        ^^ ^^^ storage.type.haskell
      MkG12 :: G1 Bool; MkG12 :: G1 Char
--    ^^^^^             ^^^^^ constant.other.haskell
--             ^^ ^^^^           ^^ ^^^^ storage.type.haskell
      }


   data G2 a {- hi -} where {- hi -}
--                    ^^^^^ keyword.other.where.haskell
      {- hi -} MkG22
                --   ^^^^^ constant.other.haskell
        {- hi -} :: G2 Char
--                  ^^ ^^^^ storage.type.haskell



  data G3 a {- whoops -} where {- hi -} -- hi
--                       ^^^^^ keyword.other.where.haskell
  {- hi -} -- hello
   -- hi
  { G31 :: G3 Int
--  ^^^ constant.other.haskell
--         ^^ ^^^ storage.type.haskell
   ;
       G32 :: G3 Char ; -- hi
--     ^^^ constant.other.haskell
--            ^^ ^^^^ storage.type.haskell
         -- hi
         {- hi -} G33 :: G3 Bool
--                ^^^ constant.other.haskell
--                       ^^ ^^^^ storage.type.haskell
   ; {- hi -} G34 :: G3 Bool
--            ^^^ constant.other.haskell
--                   ^^ ^^^^ storage.type.haskell
   }


  data G3' a {- whoops -} where {- hi -} -- hi
--                        ^^^^^ keyword.other.where.haskell
  {- hi -} -- hello
   -- hi
            { G31' :: G3' Int
--            ^^^^ constant.other.haskell
--                    ^^^ ^^^ storage.type.haskell
           ;
      G32' :: G3' Char ; -- hi
--    ^^^^ constant.other.haskell
--            ^^^ ^^^^ storage.type.haskell
         -- hi
         {- hi -} G33' :: G3' Bool
--                ^^^^ constant.other.haskell
--                        ^^^ ^^^^ storage.type.haskell
   ; {- hi -} G34' :: G3' Bool
--            ^^^^ constant.other.haskell
--                    ^^^ ^^^^ storage.type.haskell
   }

 data G5 a b c where
    { G51 :: G5
--    ^^^ constant.other.haskell
--           ^^ storage.type.haskell
   Int
-- ^^^ storage.type.haskell
      Bool
--    ^^^^ storage.type.haskell
      Char ; G52 :: G5 Int Bool
--    ^^^^          ^^ ^^^ ^^^^ storage.type.haskell
--           ^^^ constant.other.haskell
        Char;
--      ^^^^ storage.type.haskell
      G53 :: G5 Int Bool
--    ^^^ constant.other.haskell
--           ^^ ^^^ ^^^^ storage.type.haskell
      Char
--    ^^^^ storage.type.haskell
    }


 data G7
        where
    { G7 :: G7 }
--    ^^ constant.other.haskell
--          ^^ storage.type.haskell
