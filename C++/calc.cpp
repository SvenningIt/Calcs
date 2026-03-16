#include <iostream>

using namespace std;

int main() {
    char operand;
    double getal1, getal2, resultaat;

    cout << "Type een formule van het format x (+, -, *, /) y: ";

    if (cin >> getal1 >> operand >> getal2) {

        switch (operand) {
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
            while (getal2 == 0) {
                cout << "Fout! Delen door nul kan niet." << endl;
                cout << "Valid getal 2 aub: ";
                cin >> getal2;
            }
            
            resultaat = getal1 / getal2;
            break;

        default:
            cout << "Fout! De operator '" << operand << "' ken ik niet." << endl;
            return 1;
        }

        cout << getal1 << "" << operand << "" << getal2 << " = " << resultaat;

        return 0;
    }
}