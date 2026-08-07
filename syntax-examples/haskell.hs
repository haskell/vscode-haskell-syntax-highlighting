
someFunc :: IO Int
someFunc = do
    another argument
    arg :: Type
    let x = 6 :: Int
    a `Infix.Operator.func` b
    a `func` b
    a :: Bool <- something
    if a then b :: Int else g
    case (a :: Bool) of
        Nothing -> b
    return 6
  where
    ident = 4
    ident' = 9


anotherFunc arg = do
    { let thing = 5>
    ; arg <- doSomething 5
    ; let thing = 5
    ; return 8
    }

{-# OPAQUE anotherFunc #-}
