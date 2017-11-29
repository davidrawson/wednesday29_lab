class Customer

  attr_reader :name, :wallet, :drunkeness

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet.round(2)
    @age = age
    @drunkeness = 0.0
  end

  def enough_money(drink)
    drink.price_of_drink(drink) <= @wallet.round(2)
  end

  def buy_drink(drink)
    # p enough_money(drink)
    # p check_ID

    @wallet.round(2)
    p @wallet.round(2)
    p @drunkeness
    p too_drunk_to_buy
    return if too_drunk_to_buy == true
    return if check_ID == false
    return if enough_money(drink) == false
    @wallet -= drink.price_of_drink(drink)
    increase_drunkeness(drink)
  end

  def check_ID
    @age >= 18
  end

  def increase_drunkeness(drink)
    @drunkeness += drink.alcohol_level
  end

  def too_drunk_to_buy
    if @drunkeness > 9.5
      return true
    else
      return false
    end
  end


end
