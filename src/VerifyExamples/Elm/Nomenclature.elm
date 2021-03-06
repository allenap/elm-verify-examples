module VerifyExamples.Elm.Nomenclature exposing (testModuleName, testName)

import VerifyExamples.ModuleName as ModuleName exposing (ModuleName)
import VerifyExamples.Test as Test exposing (Test)


testModuleName : ModuleName -> Int -> Test -> ModuleName
testModuleName moduleName index test =
    ModuleName.extendName moduleName <|
        case Test.functionName test of
            Just name ->
                name ++ toString index

            Nothing ->
                "ModuleDoc" ++ toString index


testName : Test -> String
testName test =
    case Test.functionName test of
        Just name ->
            "#" ++ name

        Nothing ->
            "Module VerifyExamples"
