float num1 = 0; float num2 = 0;

Console.WriteLine("Calc in C#\r");
Console.WriteLine("------------------------\n");

Console.WriteLine("Type a number, and then press Enter");
num1 = Convert.ToSingle(Console.ReadLine());

Console.WriteLine("Type another number, and then press Enter");
num2 = Convert.ToSingle(Console.ReadLine());



// Ask the user to choose an option.
Console.WriteLine("Choose an option from the following list:");
Console.WriteLine("\t+ - Add");
Console.WriteLine("\t- - Subtract");
Console.WriteLine("\t* - Multiply");
Console.WriteLine("\t/ - Divide");
Console.Write("Your option? ");

// Use a switch statement to do the math.
switch (Console.ReadLine())
{
    case "+":
        Console.WriteLine($"Your result: {num1} + {num2} = " + (num1 + num2));
        break;
    case "-":
        Console.WriteLine($"Your result: {num1} - {num2} = " + (num1 - num2));
        break;
    case "*":
        Console.WriteLine($"Your result: {num1} * {num2} = " + (num1 * num2));
        break;
    case "/":
        while (num2 == 0)
        {
            Console.WriteLine("Niet 0 broer, anders krijg je een foutmelding bij delen");
            num2 = Convert.ToSingle(Console.ReadLine());
        }
        Console.WriteLine($"Your result: {num1} / {num2} = " + (num1 / num2));
        break;
}
// Wait for the user to respond before closing.
Console.Write("Press any key to close the Calculator console app...");
Console.ReadKey();