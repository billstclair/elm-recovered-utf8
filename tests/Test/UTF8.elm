module Test.UTF8 exposing (tests)

import Expect exposing (..)
import Recovered.UTF8 exposing (toMultiByte, toSingleByte)
import Test exposing (..)


toMultiByte : String -> String
toMultiByte =
    Recovered.UTF8.toMultiByte


toSingleByte : String -> String
toSingleByte =
    Recovered.UTF8.toSingleByte


tests : Test
tests =
    describe "UTF-8 Encoding/Decoding"
        [ test "UTF-8 to Unicode" <|
            \() ->
                toMultiByte "Ã¦ Ã¸ Ã¥ Ã±"
                    |> Expect.equal "æ ø å ñ"
        , test "Unicode to UTF-8" <|
            \() ->
                toSingleByte "æ ø å ñ"
                    |> Expect.equal "Ã¦ Ã¸ Ã¥ Ã±"
        , test "Unicode to UTF-8 to Unicode" <|
            \() ->
                toSingleByte "龠"
                    |> toMultiByte
                    |> Expect.equal "龠"
        ]
