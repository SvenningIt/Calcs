// Hardcoded waarden - dart:io wordt niet ondersteund door online compilers
// Vervang door stdin.readLineSync() voor interactieve input

//import 'dart:io';

void main() {
    double getal1 = 5;
    double getal2 = 20.2;
    String operator = "/";
    double resultaat = 0;

    print("Getal 1: $getal1");
    print("Operator: $operator");
    print("Getal 2: $getal2");

    switch (operator) {
        case "+":
            resultaat = getal1 + getal2;
            break;
        case "-":
            resultaat = getal1 - getal2;
            break;
        case "*":
            resultaat = getal1 * getal2;
            break;
        case "/":
            if (getal2 == 0) {
                print("Niet door nul!");
                return;
            }
            resultaat = getal1 / getal2;
            break;
        default:
            print("Ongeldig");
            return;
    }

    print("Resultaat: $resultaat");
}