module MainTest exposing (..)

import Expect
import Fuzz exposing (string)
import Main exposing (Msg(..), update)
import Test exposing (..)


updateTest : Test
updateTest =
    describe "update test"
        [ describe "Modelが0のとき"
            [ test "Incrementされると1になる" <|
                \_ ->
                    0
                        |> update Increment
                        |> Tuple.first
                        |> Expect.equal 1
            ]
        , describe "Modelが1のとき"
            [ test "Decrementされると0になる" <|
                \_ ->
                    1
                        |> update Decrement
                        |> Tuple.first
                        |> Expect.equal 0
            ]
        ]
