require("Minitest/autorun")
require("Minitest/rg")

require_relative ("../pub")
require_relative ("../drinks")
require_relative ("../customer")

class CustomerSpec < Minitest::Test

    def setup
      @customer = Customer.new("Bob", 20.00, 12)
      @customer2 = Customer.new("Bob", 20.00, 18)
      @customer = Customer.new("Bob", 20.00, 12)
      @pub = Pub.new("The Old Man Arms")
      @drink1 = Drink.new("Lager", 2.95, 2.5)
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
      @customer.buy_drink(@drink1)
      assert_equal(20.0, @customer.wallet())
      assert_equal(0.0, @customer.drunkeness())
    end

    def test_increase_drunkeness
      assert_equal(2.5, @customer.increase_drunkeness(@drink1))
    end

    def test_too_drunk_to_buy
      @customer2.buy_drink(@drink1)
      @customer2.buy_drink(@drink1)
      @customer2.buy_drink(@drink1)
      @customer2.buy_drink(@drink1)
      assert_equal(8.20, @customer2.wallet.round(2))
    end
end
