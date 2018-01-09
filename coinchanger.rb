require_relative "coin_changer_test.rb" #This line would be used only for testing and commented out when deployed for use


if $amount == nil #$amount comes from coin_changer_test.rb duirng testing. When deployed and line 1 is commented out these lines ask for the amount of change needed
    puts "How much change do you need? (enter a number and hit Return)"
    amount = Integer(gets.chomp)
else
    amount  = $amount #during testing $amount comes from coin_changer_test.rb
end




def make_change(cents_received) #cents_received is the amount of chane that you want to convert into coins
    coins_returned = {} #creates empty hash
    $coins = {"quarters" => 25, "dimes" => 10, "nickels" => 5, "pennies" => 1} #loads hash with keys and values for coins
                                                                                # the $ sign makes it a global varialbe that can be accessed by coin_changer_test.rb

    puts " "
    puts "You need change for #{cents_received} cents" #prints amount tha needs to be converted to coins
    
   	initial_amount = cents_received

$coins.each do |coin, value| #loops through coins hash for each coin type
 #   if cents_received >= 0  #proceeds if there is still money to process
    coins_returned[coin] = cents_received / value #populates coins_returned hash for each coin type calculating the number of each type
    											  #NOTE that any decimal values are truncated leaving an integer value																													
	
	cents_received = cents_received - (coins_returned[coin] * value) #reduces cents received by the amount of coins already selected

     
 	coinname=coin
     puts coins_returned[coin], coinname
     puts "amount left is #{cents_received} cents"   
     puts " "

end
$quarters = coins_returned["quarters"]
$dimes = coins_returned["dimes"]
$nickels = coins_returned["nickels"]
$pennies = coins_returned["pennies"]
puts "#{initial_amount} cents is equivalent to #{coins_returned["quarters"]} quarters, #{coins_returned["dimes"]} dimes, 
#{coins_returned["nickels"]} nickels, and #{coins_returned["pennies"]} pennies"

end



make_change(amount)
