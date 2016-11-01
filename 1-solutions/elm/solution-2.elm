module Main exposing (..)

import Html exposing (text, Html)
import Set
    exposing
        ( fromList
        , toList
        , union
        )
import List exposing (filter, sum)


main : Html a
main =
    union (fromList <| filter ((flip rem 3) >> (==) 0) [1..999])
        (fromList <| filter ((flip rem 5) >> (==) 0) [1..999])
        |> toList
        |> sum
        |> toString
        |> text
