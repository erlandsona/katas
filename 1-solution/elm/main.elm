module Kata exposing (main)

import Html exposing (text, Html)
import List
    exposing
        ( any
        , filter
        , sum
        )


main : Html a
main =
    summedMultiples [ 3, 5 ] [1..1000]
        |> toString
        |> text


summedMultiples : List Int -> List Int -> Int
summedMultiples denominators numerators =
    sum <| filter ((flip any denominators) << multiple) numerators


multiple : Int -> Int -> Bool
multiple numerator denominator =
    numerator `rem` denominator == 0
