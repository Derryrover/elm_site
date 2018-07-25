module Main exposing (..)

import Html exposing (Html, header, footer, text, div, h1, img)
import Html.Attributes exposing (src, style)
import MainCss exposing (centeredLayout, takeUpAllVerticalSpaceLeft)


---- MODEL ----


type alias Model =
  {}


init : ( Model, Cmd Msg )
init =
  ( {}, Cmd.none )



---- UPDATE ----


type Msg
  = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
  ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
  div [style centeredLayout]
    [ header [] 
      [ h1 [] 
        [ text "header of website"]
      ]
    , div [style takeUpAllVerticalSpaceLeft] 
      [ img [ src "/logo.svg" ] []
      , h1 [] [ text "Your Elm App is working!" ]
      ]
    , footer [] 
      [ text "footer of website"  
      ]
    ]



---- PROGRAM ----


main : Program Never Model Msg
main =
  Html.program
    { view = view
    , init = init
    , update = update
    , subscriptions = always Sub.none
    }
