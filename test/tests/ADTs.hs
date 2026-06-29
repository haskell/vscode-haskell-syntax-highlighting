-- SYNTAX TEST "source.haskell" "ADTs"

    data T = C
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
--           ^ constant.other.haskell
      T
--    ^ storage.type.haskell

    data T =
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
        C
--      ^ constant.other.haskell
      T
--    ^ storage.type.haskell
    data T
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
      = C
--      ^ constant.other.haskell
      T
--    ^ storage.type.haskell
    data T
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
      = C T
--      ^ constant.other.haskell
--        ^ storage.type.haskell
    data T
--  ^^^^ keyword.other.data.haskell
--       ^ storage.type.haskell
          =
        C
--      ^ constant.other.haskell
      T
--    ^ storage.type.haskell

    data D = C1 T1 | C2 T2
--  ^^^^ keyword.other.data.haskell
--       ^      ^^      ^^ storage.type.haskell
--         ^ keyword.operator.eq.haskell
--                 ^ keyword.operator.pipe.haskell
           | C3 T3
--         ^ keyword.operator.pipe.haskell
--              ^^ storage.type.haskell


    data D2
--  ^^^^ keyword.other.data.haskell
      = C3 T3
--    ^ keyword.operator.eq.haskell
--      ^^ constant.other.haskell
--         ^^ storage.type.haskell
      | C4 T4
--      ^^ constant.other.haskell
--         ^^ storage.type.haskell
--    ^ keyword.operator.pipe.haskell

    data D3 = C5 { f5 :: T5, g5 :: T5 } | C6 T6
--  ^^^^ keyword.other.data.haskell
--          ^ keyword.operator.eq.haskell
--                 ^^        ^^ variable.other.member.definition.haskell
--                       ^^        ^^        ^^ storage.type.haskell
--                                      ^ keyword.operator.pipe.haskell
--            ^^                          ^^ constant.other.haskell
            | C7 { f7 :: T7 }
--          ^ keyword.operator.pipe.haskell
--                 ^^ variable.other.member.definition.haskell
--                       ^^ storage.type.haskell
