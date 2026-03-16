import Foundation

print("Voer getal 1 in: ")
let getal1 = Double(readLine() ?? "") ?? 0

print("Voer getal 2 in: ")
var getal2 = Double(readLine() ?? "") ?? 0

print("Voer de operand in: ")
let operand = readLine()

func bereken() -> Double {
    switch operand {
        case "+":
            return getal1 + getal2
        case "-":
            return getal1 - getal2
        case "*":
            return getal1 * getal2
        case "/":
            while getal2 == 0 {
                print("Delen door 0 is flauwekul, opnieuw: ")
                getal2 = Double(readLine() ?? "") ?? 0
            }
            return getal1 / getal2
        default:
            print("Slechter operand, => 0")
            return 0
        }
}

let resultaat = bereken()
print("\(getal1) \(operand ?? "") \(getal2) = \(resultaat)")
