class Customer

  attr_reader :name, :wallet, :drunkeness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkeness = 0.0
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

  def increase_drunkeness(drink)
    @drunkeness += drink.alcohol_level
  end

end
