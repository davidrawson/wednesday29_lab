class Drink

  attr_reader :name , :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def price_of_drink(drink)
    return @price
  end


end
