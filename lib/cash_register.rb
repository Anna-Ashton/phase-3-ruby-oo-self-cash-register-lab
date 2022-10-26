require 'pry'

class CashRegister
    attr_accessor :total
    attr_accessor :discount
    attr_accessor :items
    attr_accessor :prices

    def initialize (discount = nil)
        @discount = discount
        @total = 0
        @items = []
        @prices = []
    end

    def add_item title, price, quantity = 1 
        @items.fill(title, @items.size, quantity)
        self.prices.push(price * quantity)
        self.total += (price * quantity)
    end

    def apply_discount 
        if @discount == nil
            "There is no discount to apply."
        else
        self.total = (self.total - (self.total * discount/100))
        "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.prices[-1]
    end


end
