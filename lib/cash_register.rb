require 'pry'

class CashRegister
             
    attr_reader :discount
    attr_accessor :total , :price , :items, :last_transaction
    
    
    

    def initialize(discount = 0)
        @discount =  discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        self.last_transaction = price * quantity
        self.total += self.last_transaction

        quantity.times{@items << title}
     end
 
    def apply_discount
        if self.discount == 0  
            "There is no discount to apply."

        else
         self.total = self.total - self.discount * self.total/100
            "After the discount, the total comes to $#{self.total}."
        end

    end

    def items
        @items
    end
    
    def void_last_transaction
        self.total -= self.last_transaction


    end
end

cr = CashRegister.new(0)


binding.pry

