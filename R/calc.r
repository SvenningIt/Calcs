while (1) {
    cat("Getal 1: ")
    getal1 <- as.numeric(readLines("stdin", n=1))
    
    cat("Operator (+, -, *, /): ")
    operator <- readLines("stdin", n=1)
    
    cat("Getal 2: ")
    getal2 <- as.numeric(readLines("stdin", n=1))
    
    resultaat <- 0
    
    if (operator == "+") {
        resultaat <- getal1 + getal2
    } else if (operator == "-") {
        resultaat <- getal1 - getal2
    } else if (operator == "*") {
        resultaat <- getal1 * getal2
    } else if (operator == "/") {
    
        while (getal2 == 0) {
        cat("Nah niet 0, opnieuw unc:  ")
        getal2 <- as.numeric(readLines("stdin", n=1))
        }
        resultaat <- getal1 / getal2
    
    } else {
        cat("Ongeldig\n")
    }
    
    cat("Resultaat:", resultaat, "\n")
}