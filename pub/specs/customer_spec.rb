require("Minitest/autorun")
require("Minitest/rg")

require_relative ("../pub")
require_relative ("../drinks")
require_relative ("../customer")

class CustomerSpec < Minitest::Test

    def setup
      @customer = Customer.new("Bob", 20.00, 12)
      @pub = Pub.new("The Old Man Arms")
      @drink1 = Drink.new("Lager", 2.95)
    end

    def test_name
      assert_equal("Bob", @customer.name)
    end

    def test_price_of_drink
      price = @drink1.price_of_drink(@drink1)
      assert_equal(2.95, price)
    end

    def test_enough_money
      assert_equal(true, @customer.enough_money(@drink1))
    end

    def test_buy_drink
      assert_equal(17.05, @customer.buy_drink(@drink1))
    end



end
