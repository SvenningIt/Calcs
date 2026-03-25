import strutils
import math

proc checkArcInput(input: var float): float =
    while true:
        if input < -1.0 or input > 1.0:
            echo "Waarde moet tussen -1 en 1 zijn, probeer opnieuw: "
            input = parseFloat(readLine(stdin))
        else:
            break
    return input

when isMainModule:
    while true:
        var resultaat: float = 0.0
        var getal: string
        var getal1: float = 0.0
        var getal2: float = 0.0

        echo "Getal 1: "
        var inGetal1 = readLine(stdin)
        if inGetal1 == "E":
            getal1 = E
        elif inGetal1 == "PI":
            getal1 = PI
        else:
            getal1 = parseFloat(inGetal1)
        
        echo "Operator (+, -, *, /, **, rt, (arc)cos, (arc)sin, (arc)tan), ln, log10: "
        var operator = readLine(stdin)
        
        echo "Getal 2: "
        var inGetal2 = readLine(stdin)
        if inGetal2 == "E":
            getal2 = E
        elif inGetal2 == "PI":
            getal2 = PI
        else:
            getal2 = parseFloat(inGetal2)
        
        if operator == "+":
            resultaat = getal1 + getal2

        elif operator == "-":
            resultaat = getal1 - getal2

        elif operator == "*":
            resultaat = getal1 * getal2

        elif operator == "/":
            while getal2 == 0:
                echo "Neeje, opnieuw: "
                getal2 = parseFloat(readLine(stdin))
            resultaat = getal1 / getal2

        elif operator == "**":
            resultaat = pow(getal1, getal2)

        elif operator == "rt":
            resultaat = pow(getal1, 1.0/getal2)

        elif operator == "cos":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                resultaat = round(cos(degToRad(getal1)), 3)
            elif getal == "2":
                resultaat = round(cos(degToRad(getal2)), 3)

        elif operator == "sin":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                resultaat = round(sin(degToRad(getal1)), 3)
            elif getal == "2":
                resultaat = round(sin(degToRad(getal2)), 3)

        elif operator == "tan":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                resultaat = round(tan(degToRad(getal1)), 3)
            elif getal == "2":
                resultaat = round(tan(degToRad(getal2)), 3)

        elif operator == "arccos":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                getal1 = checkArcInput(getal1)
                resultaat = round(radToDeg(arccos(getal1)), 3)
            elif getal == "2":
                getal2 = checkArcInput(getal2)
                resultaat = round(radToDeg(arccos(getal2)), 3)

        elif operator == "arcsin":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                getal1 = checkArcInput(getal1)
                resultaat = round(radToDeg(arcsin(getal1)), 3)
            elif getal == "2":
                getal2 = checkArcInput(getal2)
                resultaat = round(radToDeg(arcsin(getal2)), 3)

        elif operator == "arctan":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                resultaat = round(radToDeg(arctan(getal1)), 3)
            elif getal == "2":
                resultaat = round(radToDeg(arctan(getal2)), 3)
        
        elif operator == "ln":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                if getal1 <= 0:
                    echo "Enkel postief is toegelaten"
                else:
                    resultaat = ln(getal1)
            elif getal == "2":
                if getal2 <= 0:
                    echo "Enkel postief is toegelaten"
                else:
                    resultaat = ln(getal2)

        elif operator == "log10":
            echo "Welk getal: "
            getal = readLine(stdin)
            if getal == "1":
                if getal1 <= 0:
                    echo "Enkel positief is toegelaten"
                else:
                    resultaat = round(log10(getal1), 3)
            elif getal == "2":
                if getal2 <= 0:
                    echo "Enkel positief is toegelaten"
            else:
                resultaat = round(log10(getal2), 3)
        else:
            echo "Look at this fella"
        
        echo "Resultaat: ", resultaat