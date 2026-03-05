print("calc pro max")
while True:
    nr1,nr2 = float(input("nummer1: ")), float(input("nummer2: "))

    print("Welke operand? (+ - * /)")
    operand = input("operand: ")
    
    if operand != "+" and operand != "-" and operand != "*" and operand != "/":
        print("Ongeldige operand, probeer opnieuw.")
        continue

    if operand == "+":
        print(nr1 + nr2)

    elif operand == "-":
        print(nr1 - nr2)

    elif operand == "*":
        print(nr1 * nr2)

    elif operand == "/":
        if nr2 == 0:
            print("Kan niet delen door 0")
        else:
            print(round(nr1 / nr2, 2))

    else:
        print("Ongeldige operand")