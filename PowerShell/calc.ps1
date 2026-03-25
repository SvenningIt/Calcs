while ($true) {
    $getal1 = Read-Host "Getal 1"
    if ($getal1 -eq "stop") { exit }
    $getal1 = [double]$getal1

    $operator = Read-Host "Operator (+, -, *, /)"

    $getal2 = Read-Host "Getal 2"
    $getal2 = [double]$getal2

    $resultaat = 0

    switch ($operator) {
        "+" { $resultaat = $getal1 + $getal2}
        "-" { $resultaat = $getal1 - $getal2}
        "*" { $resultaat = $getal1 * $getal2}
        "/" { while ($getal2 -eq 0) {
            $getal2 = Read-Host "Niet door nul, opnieuw"
            $getal2 = [double]$getal2
            }
            $resultaat = $getal1 / $getal2}
        default { Write-Host "Je e iet verkeerd gedaan" }
    }

    Write-Host $resultaat
}