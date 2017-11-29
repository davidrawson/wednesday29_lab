require("Minitest/autorun")
require("Minitest/rg")

require_relative ("../drinks")

class DrinkSpec < Minitest::Test

  def test_name
    drink = Drink.new("Lager", 2.95)
    assert_equal("Lager", drink.name)
  end

  def test_price
    drink = Drink.new("Lager", 2.95)
    assert_equal(2.95, drink.price)
  end


end
