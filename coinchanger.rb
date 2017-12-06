def make_change(cents_received)
    coins_returned = {}
    coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1}
    puts coins
    puts "Amount given is #{cents_received}"

    amount =coins["quarter"] + coins["dime"]
    puts amount
    amount_given = cents_received

coins.each do |coin, value|
    if cents_received >= 0
    coins_returned[coin] = cents_received / value
	puts cents_received, value, cents_received/value
	cents_received -= coins_returned[coin] * value
    puts value
    puts coins_returned[coin]
    puts 411/3
    end
     puts coins_returned
        
end

puts "#{amount_given} amounts to #{coins_returned["quarter"]} quarters and #{coins_returned["dime"]} dimes 
and #{coins_returned["nickel"]} nickels and #{coins_returned["penny"]} pennies"

end


make_change(49)