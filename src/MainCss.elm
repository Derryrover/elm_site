module MainCss exposing (..)

import Style exposing (..)

centeredLayout : List Style
centeredLayout =
  [ display flex_
  , flexDirection column
  , height "100%"
  --, justifyContent center
  --, alignItems center
  ]

takeUpAllVerticalSpaceLeft : List Style
takeUpAllVerticalSpaceLeft =
  [ flex "1"
  ]