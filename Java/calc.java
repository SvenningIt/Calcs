import java.util.Scanner;

public class calc {
    public static void main(String[] args) {

        boolean stop = false;
        Scanner lezer = new Scanner(System.in);

        while (stop == false) {

            System.out.println("eerste cijfer:");
            double x = lezer.nextDouble();
            lezer.nextLine();

            System.out.println("tweede cijfer:");
            double y = lezer.nextDouble();
            lezer.nextLine();

            System.out.println("operator (+, -, *, /):");
            String operand = lezer.nextLine();

            switch (operand) {
                case "+":
                    System.out.println(x + y);
                    break;

                case "-":
                    System.out.println(x - y);
                    break;

                case "*":
                    System.out.println(x * y);
                    break;

                case "/":
                    if (y == 0) {
                        System.out.println("Delen door nul gaan we niet mee beginnen");
                        break;
                    } else {
                        System.out.println(x / y);
                    }
                    break;

                default:
                    System.out.println("Geen geldige operand.");
                    break;
            }
            
            System.out.println("Stoppen?");
            String antwoord = lezer.nextLine();
            
            if (antwoord.equalsIgnoreCase("ja")) {
                stop = true;
            }
        }
        lezer.close();
    }
}
