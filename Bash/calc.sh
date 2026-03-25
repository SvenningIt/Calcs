# enkel gehele getallen, bc niet geinstalleerd op mijn git bash (windows)

while true; do
    read -p "Getal 1: " getal1
    read -p "Operator (+, -, *, /): " operator
    read -p "Getal 2: " getal2

    if [ "$operator" == "+" ]; then
        resultaat=$(( getal1 + getal2 ))

    elif [ "$operator" == "-" ]; then
        resultaat=$(( getal1 - getal2 ))

    elif [ "$operator" == "*" ]; then
        resultaat=$(( getal1 * getal2 ))

    elif [ "$operator" == "/" ]; then
        while [ "$getal2" == 0 ]; do
            read -p "Nuh uh, opnieuw: " getal2
        done

        resultaat=$(( getal1 / getal2 ))

    else
        echo "Nah"
    fi

    echo "Resultaat: $resultaat"
done