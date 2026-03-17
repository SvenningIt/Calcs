while true
    print("Getal 1: ")
    getal1 = parse(Float64, readline())

    print("Operator (+, -, *, /): ")
    operator = readline()

    print("Getal 2: ")
    getal2 = parse(Float64, readline())

    function bereken(x, y, symbool)
        if symbool == "+"
            return x + y

        elseif symbool == "-"
            return x - y
        
        elseif symbool == "*"
            return x * y

        elseif symbool == "/"
            while y == 0
                print("Getal 2 mag niet 0 zijn, opnieuw: ")
                y = parse(Float64, readline())
            end
            return x / y
        else
            return nothing
        end
    end

    res = bereken(getal1, getal2, operator)

    if res !== nothing
        resultaat = round(res, digits=2)
        println("$getal1 $operator $getal2 = $resultaat")
    else
        println("Fout: '$operator' is geen geldige operator.")
    end
end