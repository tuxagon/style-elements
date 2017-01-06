module Style.Media
    exposing
        ( query
        , phoneOnly
        , tabletPortraitUp
        , tabletPortraitOnly
        , tabletLandscapeUp
        , tabletLandscapeOnly
        , desktopUp
        , desktopOnly
        , bigDesktopUp
        )

{-| Standard media query ranges.

Taken from the following article: https://medium.freecodecamp.com/the-100-correct-way-to-do-css-breakpoints-88d6a5ba1862#.lzjwmdyed

@docs query, phoneOnly, tabletPortraitUp, tabletPortraitOnly, tabletLandscapeUp, tabletLandscapeOnly, desktopUp, desktopOnly, bigDesktopUp


-}

import Style.Model exposing (Model, Property)


{-| -}
query : String -> List (Property animation variation) -> Property animation variation
query =
    Style.Model.MediaQuery


{-| -}
phoneOnly : List (Property animation variation) -> Property animation variation
phoneOnly =
    query "(max-width: 599px)"


{-| -}
tabletPortraitUp : List (Property animation variation) -> Property animation variation
tabletPortraitUp =
    query "(min-width: 600px)"


{-| -}
tabletPortraitOnly : List (Property animation variation) -> Property animation variation
tabletPortraitOnly =
    query "(min-width: 600px) and (max-width: 899px)"


{-| -}
tabletLandscapeUp : List (Property animation variation) -> Property animation variation
tabletLandscapeUp =
    query "(min-width: 900px)"


{-| -}
tabletLandscapeOnly : List (Property animation variation) -> Property animation variation
tabletLandscapeOnly =
    query "(min-width: 900px) and (max-width: 1199px)"


{-| -}
desktopUp : List (Property animation variation) -> Property animation variation
desktopUp =
    query "(min-width: 1200px)"


{-| -}
desktopOnly : List (Property animation variation) -> Property animation variation
desktopOnly =
    query "(min-width: 1200px) and (max-width: 1799px)"


{-| -}
bigDesktopUp : List (Property animation variation) -> Property animation variation
bigDesktopUp =
    query "(min-width: 1800px)"
