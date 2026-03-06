package main

import "fmt"

func main() {

	var x, y float32
	var operand string

	for {

		fmt.Println("Geef me iets volgens de formule: x (operand) y:")
		fmt.Println("Om te stoppen: 0 s 0")

		_, err := fmt.Scanln(&x, &operand, &y)

		if err != nil {
			fmt.Println("Oesh")
			fmt.Println("")
			continue
		}

		if operand == "stop" || operand == "s" {
			fmt.Println("Gurt: tot de volgende")
			break
		}

		switch operand {
		case "+":
			fmt.Println(x + y)
			fmt.Println("")
		case "-":
			fmt.Println(x - y)
			fmt.Println("")
		case "*":
			fmt.Println(x * y)
			fmt.Println("")
		case "/":
			if y != 0 {
				fmt.Println(x / y)
				fmt.Println("")
			} else {
				fmt.Println("Delen door nul is flauwe kul!!")
				fmt.Println("")
			}
		default:
			fmt.Println("the helly is da")
			fmt.Println("")
		}
	}
}
