-- SYNTAX TEST "source.haskell" "Ticks in various positions"


  x = Tt_'_.T_'__t' T'D_'.C T_'ttt_'t_' T'x T_x T_'_
--    ^^^^^^        ^^^^^^ entity.name.namespace.haskell
--          ^^^^^^^       ^ ^^^^^^^^^^^ ^^^ ^^^ ^^^^ constant.other.haskell
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
  x = a `Tt_'_.T_'__t'` b `T'D_'.C` c `T_'ttt_'t_'` d `T'x` e `T_x` f `T_'_`
--       ^^^^^^            ^^^^^^ entity.name.namespace.haskell
--             ^^^^^^^           ^     ^^^^^^^^^^^     ^^^     ^^^     ^^^^ constant.other.haskell
--      ^             ^   ^       ^   ^           ^   ^   ^   ^   ^   ^    ^ - entity.name.namespace.haskell constant.other.haskell
--      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
  x = 'T' '_'
--    ^^^ ^^^ string.quoted.single.haskell
--    ^^^^^^^ - invalid
  
  type T = Tt'.T_'__t' 'TD'.C 'Tt'T.T.T' T_'ttt_'t_' 'T T'x T_x T_'_
--         ^^^^         ^^^^   ^^^^^^^ entity.name.namespace.haskell
--                     ^      ^                      ^ keyword.operator.promotion.haskell
--             ^^^^^^^      ^         ^^ ^^^^^^^^^^^  ^ ^^^ ^^^ ^^^^ storage.type.haskell
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
  type T = a `Tt'.T_'__t'` b '`TD'.C` c '`Tt'T.T.T'` d `T_'ttt_'t_'` e '`T` f `T'x` g `T_x` h `T_'_`
--            ^^^^             ^^^^       ^^^^^^^ entity.name.namespace.haskell
--                           ^          ^                              ^ keyword.operator.promotion.haskell
--                ^^^^^^^          ^             ^^     ^^^^^^^^^^^      ^     ^^^     ^^^     ^^^^ storage.type.infix.haskell
--           ^           ^    ^     ^    ^         ^   ^           ^    ^ ^   ^   ^   ^   ^   ^    ^ - entity.name.namespace.haskell constant.other.haskell
--          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid
  type T = '(F, (B,G.C,'[A,B,C]))
--           ^   ^   ^   ^ ^ ^ storage.type.haskell
--                 ^^ entity.name.namespace.haskell
--         ^           ^ keyword.operator.promotion.haskell

  type T = '() '[]
--         ^   ^ keyword.operator.promotion.haskell
--          ^^ support.constant.unit.haskell
--              ^^ support.constant.empty-list.haskell
  
  type T = T.'C 
--         ^^ - entity.name.namespace.haskell
--          ^ storage.type.operator.infix.haskell
--           ^ keyword.operator.promotion.haskell
--         ^  ^ storage.type.haskell

  type T = '(:+) '(AC.:+) 'AC.:++ 'AC.++
--         ^     ^        ^ keyword.operator.promotion.haskell
--                 ^^^     ^^^ entity.name.namespace.haskell
--           ^^       ^^ storage.type.operator.haskell
--                            ^^^     ^^ storage.type.operator.infix.haskell
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid

  type T = _t'_a'b'c
--         ^^^^^^^^^ variable.other.generic-type.haskell
--         ^^^^^^ - string.quoted.single.haskell invalid
  type T = " a ' b ' c 'de' f'g''' 'a'"
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.double.haskell
--         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ - invalid

  data AB = A | B
  type T = '( 'A, 'B )
--         ^  ^   ^ keyword.operator.promotion.haskell
--             ^   ^ storage.type.haskell
--         ^^^^^^^^^^^ - string.quoted.single.haskell
  type T = '( 'A', 'B' )
--         ^ keyword.operator.promotion.haskell
--            ^^^  ^^^ string.quoted.single.haskell
--            ^^^^^^^^ - keyword.operator.promotion.haskell storage.type.haskell
  type T = '[ '[', ']' ]
--         ^ keyword.operator.promotion.haskell
--          ^          ^ punctuation.bracket.haskell
--            ^^^  ^^^ string.quoted.single.haskell
--            ^^^^^^^^ - keyword.operator.promotion.haskell punctuation.bracket.haskell
  type T a' b'' = '( a', b'', 'a' )
--                   ^^  ^^^ variable.other.generic-type.haskell
--                            ^^^ string.quoted.single.haskell
--                   ^^^^^^^^ - string.quoted.single.haskell
  type T = Proxy 'T -> Proxy 'T'
--               ^ keyword.operator.promotion.haskell
--                ^ storage.type.haskell
--                           ^^^ string.quoted.single.haskell
--                           ^^^ - keyword.operator.promotion.haskell storage.type.haskell
  type T = '[ '\'', '\\', '\n' ]
--            ^^^^  ^^^^  ^^^^ string.quoted.single.haskell
--             ^^    ^^    ^^ constant.character.escape.haskell
