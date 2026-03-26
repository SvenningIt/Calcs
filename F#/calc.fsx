open System

printfn "Getal 1: "
let getal1 = Console.ReadLine() |> float

printfn "Operator: "
let operator = Console.ReadLine()

printfn "Getal 2: "
let mutable getal2 = Console.ReadLine() |> float

let mutable resultaat = 0.0

match operator with
| "+" -> resultaat <- getal1 + getal2
| "-" -> resultaat <- getal1 - getal2
| "*" -> resultaat <- getal1 * getal2
| "/" ->
    while getal2 = 0.0 do
        printfn "Niet door nul, opnieuw: "
        getal2 <- Console.ReadLine() |> float
    resultaat <- getal1 / getal2
| _ -> printfn "Nuh uh"

printfn "%f" resultaat