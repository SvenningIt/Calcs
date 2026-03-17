<?php

while(true) {
    echo "Getal 1: ";
    $input = trim(fgets(STDIN));

    if (strtolower($input) === 'stop') {
        echo "Tot de volgende\n";
        break;
    }

    $getal1 = (float)$input;

    echo "Operator (+, -, *, /): ";
    $operator = trim(fgets(STDIN));

    echo "Getal 2: ";
    $getal2 = (float)trim(fgets(STDIN));

    $resultaat = null;

    switch ($operator) {
        case "+":
            $resultaat = $getal1 + $getal2;
            break;
        case "-":
            $resultaat = $getal1 - $getal2;
            break;
        case "*":
            $resultaat = $getal1 / $getal2;
            break;
        case "/":
            while ($getal2 == 0) {
                echo "niet goed niet, opnieuw: \n";
                $getal2 = (float)trim(fgets(STDIN));
            }

            $resultaat = $getal1 / $getal2;
            break;
        default:
            echo "geen geldige operator\n";
    }

    if ($resultaat !== null) {
        $afgerond = round($resultaat, 2);
        echo "Resultaat: $getal1 $operator $getal2 = $afgerond\n";
    }
}
?>