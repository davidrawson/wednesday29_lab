require("Minitest/autorun")
require("Minitest/rg")
require_relative("../customer")
require_relative ("../pub")
require_relative ("../drinks")

class PubSpec < Minitest::Test

  def setup
    @pub = Pub.new("The Old Man Arms")
    @drink1 = Drink.new("Lager", 2.95, 2.5)
    @drink2 = Drink.new("Stout", 3.50, 3.0)
    @drink3 = Drink.new("IPA", 4.00, 2.8)
    # @drinks_in_pub = [@drink1, @drink2, @drink3]
    @customer = Customer.new("Bob", 20.00, 12)
    @customer2 = Customer.new("Jim", 15.00, 78)
  end

  def test_name
    assert_equal("The Old Man Arms", @pub.name)

  end

  def test_empty_till
    assert_equal(0.00, @pub.till_value)
  end

  def test_add_to_till
    @pub.add_to_till(2.95)
    assert_equal(2.95, @pub.till_value)
  end

  def test_add_drinks
    drinks_array = @pub.add_drinks(@drink1)
    assert_equal(1, drinks_array.length)
  end

  def test_has_drink
    drinks_array = @pub.add_drinks(@drink1)
    assert_equal(true, drinks_array.include?(@drink1))
  end

  def test_serve_drink
    @customer.buy_drink(@drink1)
    assert_equal(2.95, @pub.serve_drink(@drink1))
  end

  def test_check_ID__underage
    assert_equal(false, @customer.check_ID)
  end

  def test_check_ID__legal
    assert_equal(true, @customer2.check_ID)
  end

  
end
