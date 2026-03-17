while true
    print "Getal 1: "
    input = gets.chomp

    if (input == "stop")
        puts "Tot de volgende"
        break
    end

    getal1 = input.to_f

    print "Operator (+, -, *, /): "
    operator = gets.chomp

    print "Getal 2: "
    getal2 = gets.to_f

    resultaat = case operator
                when "+" then getal1 + getal2
                when "-" then getal1 - getal2
                when "*" then getal1 * getal2
                when "/" then 
                    while getal2 == 0
                    puts "Delen door 0 kan niet. Opnieuw: "
                    getal2 = gets.to_f
                    end
                    getal1 / getal2
                else
                    nil
                end

    if resultaat.is_a?(Numeric)
        puts "#{getal1} #{operator} #{getal2} = %.2f" % resultaat
    else
        puts "No bien operator"
    end
  
  puts "°" * 67 
end