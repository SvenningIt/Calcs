use std::io;

fn main() {
    println!("Calc");
    println!("Volgens formule x (operand) y");

    loop {
        let mut input = String::new();


        //input
        io::stdin().read_line(&mut input).expect("Huh");
        let input = input.trim();

        //break of niet
        if input == "yo" || input == "stop" || input == "exit"{
            println!("Gurt: Tot de volgende!");
            break;
        }

        //input uitlezen
        let tokens: Vec<&str> = input.split_whitespace().collect();

        if tokens.len() != 3 {
            println!("Ella ba juste formule gebruiken aub.");
            continue;
        }

        //eerste input
        let x: f32 = match tokens[0].parse() {
            Ok(n) => n,
            Err(_) => { println!("Bruh"); continue;}
        };
        
        let y: f32 = match tokens[2].parse() {
            Ok(n) => n,
            Err(_) => { println!("Bruh"); continue;}
        };

        let operator = tokens[1];

        //berekening

        let resultaat = match operator {
            "+" => Some(x + y),
            "-" => Some(x - y),
            "/" => Some(x / y),
            "*" => Some(x * y),
            "^" => Some(x.powf(y)),
            _ => None,
        };

        //resultaat
        match resultaat {
            Some(waarde) => println!("= {}", waarde),
            None => println!("Mi bombo"),
        }
    }
}
