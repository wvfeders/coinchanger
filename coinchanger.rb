def make_change(cents_received) #cents_received is the amount of chane that you want to convert into coins
    coins_returned = {} #creates empty hash
    coins = {"quarter" => 25, "dime" => 10, "nickel" => 5, "penny" => 1} #loads hash with keys and values for coins
    puts "Amount given is #{cents_received}" #prints amount tha needs to be converted to coins

   	amount_received = cents_received

coins.each do |coin, value| #loops through coins hash for each coin type
 #   if cents_received >= 0  #proceeds if there is still money to process
    coins_returned[coin] = cents_received / value #populates coins_returned hash for each coin type calculating the number of each type
    											  #NOTE that any decimal values are truncated leaving an integer value																													
	puts cents_received, value, cents_received/value
	cents_received = cents_received - (coins_returned[coin] * value) #reduces cents received by the amount of coins already selected
    puts value
    puts coins_returned[coin]
    
 #   end
     puts coins_returned
        
end

puts "#{amount_received} cents is equivalent to #{coins_returned["quarter"]} quarters, #{coins_returned["dime"]} dimes, 
and #{coins_returned["nickel"]} nickels, and #{coins_returned["penny"]} pennies"

end


make_change(45)