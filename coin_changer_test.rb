require "minitest/autorun"

require_relative "coinchanger.rb"



class TestMeme < Minitest::Test
	
 def test_cents_per_coin  #tests the value of each coin type
    assert_equal(25, $coins["quarters"])
    assert_equal(10, $coins["dimes"])
    assert_equal(5, $coins["nickels"])
    assert_equal(1, $coins["pennies"])
 end


$amount = 69  #the $ sign allows amount to be accessed by coinchanger.rb during tests
 def test_69_cents #tests the coins that should be returned to total 69 cents
 	
	assert_equal(2, $quarters)
	assert_equal(1, $dimes)
	assert_equal(1, $nickels)
	assert_equal(4, $pennies)
end





end