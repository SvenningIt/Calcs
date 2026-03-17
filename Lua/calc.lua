while true do
    io.write("Getal 1: ")
    local input = io.read()

    if input == "stop" then
        print("Adios!")
        break
    end

    local getal1 = tonumber(input)

    io.write("Operator (+, -, *, /): ")
    local operator = io.read()

    io.write("Getal 2: ")
    local getal2 = tonumber(io.read())

    if operator == "+" then
        resultaat = getal1 + getal2
    elseif operator == "-" then
        resultaat = getal1 - getal2
    elseif operator == "*" then
        resultaat = getal1 * getal2
    elseif operator == "/" then
        if getal2 == 0 then
                print("Nuh uh you didn't! ")
                break
        else
            resultaat = getal1 / getal2
        end
    else
        io.write("Ongeldige operator")
    end

    print(string.format("%g %s %g = %.2f", getal1, operator, getal2, resultaat))
end