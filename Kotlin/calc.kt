fun main() {
    //hardcoded waardes want de input deed moeilijk met online compilers
    var getal1 = 5.0
    var getal2 = 3.254
    var operator = "/"
    var resultaat = 0.0

    when (operator) {
        "+" -> resultaat = getal1 + getal2
        "-" -> resultaat = getal1 - getal2
        "*" -> resultaat = getal1 * getal2
        "/" -> {
            if (getal2 == 0.0) {
                println("Niet door nul")
                return
            }
            resultaat = getal1 / getal2
        }
        else -> {
            println("Ongeldig")
            return
        }
    }
    println("Resultaat: $resultaat")
}