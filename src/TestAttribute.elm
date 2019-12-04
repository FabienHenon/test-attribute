module TestAttribute exposing (addId, addClass)

{-| With the `TestAttribute` module you can add attributes to your html elements only for `Test` env.
This allows you to select DOM elements with these attributes for your end to end tests.


# Attributes

@docs addId, addClass

-}

import Env
import Html exposing (Attribute)
import Html.Attributes as Attributes
import Json.Encode as JE


{-| Adds a `data-test-id` attribute if the `Env` is `Test`

Conventionnally, ids can be used by only one element

-}
addId : String -> Env.Env -> Attribute msg
addId id env =
    if env == Env.Test then
        Attributes.attribute "data-test-id" id

    else
        Attributes.property "" (JE.string "")


{-| Adds a `data-test-class` attribute if the `Env` is `Test`

Conventionnally, classes can be used by several elements

-}
addClass : String -> Env.Env -> Attribute msg
addClass class env =
    if env == Env.Test then
        Attributes.attribute "data-test-class" class

    else
        Attributes.property "" (JE.string "")
