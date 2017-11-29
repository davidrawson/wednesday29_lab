class Pub

    attr_reader :name , :till_value

    def initialize(name)
      @name = name
      @till_value = 0.00
      @drinks_in_pub = []

    end

    def add_to_till(payment)
      @till_value += payment
    end

    def add_drinks(drink)
      return @drinks_in_pub.push(drink)
    end

    def serve_drink(drink)
      @till_value += drink.price_of_drink(drink) 
    end
end
