class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def enough_money(drink)
    drink.price_of_drink(drink) <= wallet
  end

  def buy_drink(drink)
    if enough_money(drink) == true
      @wallet -= drink.price_of_drink(drink)
    end
  end

  def check_ID
    @age >= 18
  end

end
