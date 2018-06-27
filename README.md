# UTF-8 (Unicode Transformation Format 8-bit)

This is a port to Elm of (c) [Chris Veness](http://www.movable-type.co.uk)
library to encode / decode between multi-byte Unicode characters and UTF-8
multiple single-byte character encoding.

To use, simply import the main namespace:

    import Recovered.UTF8

or specific function(s):

    import Recovered.UTF8 exposing (toMultiByte,toSingleByte)

# Recovered

This package was formerly [spisemisu/elm-utf8](http://package.elm-lang.org/packages/spisemisu/elm-utf8/latest), but was deleted from GitHub and recovered as [billstclair/elm-recovered-utf8](http://package.elm-lang.org/packages/billstclair/elm-recovered-utf8/latest).

The original code is now at https://gitlab.com/spisemisu/elm-utf8, but that can't (yet) be referenced from `elm-package.json`.
