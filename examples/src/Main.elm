module Main exposing (Msg(..), main, update, view)

import Browser
import Env
import Html exposing (..)
import Html.Attributes exposing (..)
import TestAttribute


main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = NoOp


update msg model =
    case msg of
        NoOp ->
            model


view model =
    div []
        [ div
            [ class "element"
            , TestAttribute.addId "my-element" Env.Test
            ]
            [ text "Element with test-id"
            ]
        , div
            [ class "element"
            , TestAttribute.addClass "my-class" Env.Test
            ]
            [ text "Element with test-class"
            ]
        , div
            [ class "element"
            , TestAttribute.addId "my-other" Env.Prod
            ]
            [ text "Element in production mode"
            ]
        ]
