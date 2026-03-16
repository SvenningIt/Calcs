#include <stdio.h>

int main() {
    char operator;
    double getal1, getal2, resultaat;
 
    printf("Voer 2 getallen in: ");
    scanf("%lf %lf", &getal1, &getal2);

    printf("Kies een operator (+, -, *, /): ");
    scanf(" %c", &operator);
   

    switch (operator) {
        case '+':
            resultaat = getal1 + getal2;
            break;
        case '-':
            resultaat = getal1 - getal2;
            break;
        case '*':
            resultaat = getal1 * getal2;
            break;
        case '/':
            if (getal2 != 0)
                resultaat = getal1 / getal2;
            else {
                printf("Fout! Delen door nul kan niet.\n");
                return 1; // Stop het programma met een foutcode
            }
            break;
        default:
            printf("Fout! Deze operator ken ik niet.\n");
            return 1;
    }

    printf("%.2lf %c %.2lf = %.2lf\n", getal1, operator, getal2, resultaat);

    return 0;
}