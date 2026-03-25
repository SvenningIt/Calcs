object Calc {
    def main(args: Array[String]): Unit = {
        while (true) {
            print("Getal 1: ")
            val getal1 = scala.io.StdIn.readDouble()

            print("Operator: ")
            val operator = scala.io.StdIn.readLine()
            
            print("Getal 2: ")
            var getal2 = scala.io.StdIn.readDouble()

            var resultaat = 0.0

            operator match {
                case "+" => resultaat = getal1 + getal2
                case "-" => resultaat = getal1 - getal2
                case "*" => resultaat = getal1 * getal2
                case "/" => while (getal2 == 0) {
                                print("Getal 2: ")
                                getal2 = scala.io.StdIn.readDouble()
                            }
                            resultaat = getal1 / getal2
                case _   => println("Womp Womp")
            }

            println(resultaat)
        }
    }
}