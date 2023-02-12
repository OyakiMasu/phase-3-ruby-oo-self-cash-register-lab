require 'pry'

class CashRegister
             
    attr_reader :discount
    attr_accessor :total , :price , :items, :last_transaction
    
    

    def initialize(discount = 20)
        @discount =  discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @price = price
        @quantity = quantity
        self.total += price * quantity
        quantity.times{@items << title}
     end
 
    def apply_discount

        if discount == 0
            "There is no discount to apply."
        else
        self.total = total - discount * total/100
        "After the discount, the total comes to $#{total}."
        end

    end

    def items
        @items
    end
    
    def void_last_transaction


    end
 
end

cr = CashRegister.new(20)


binding.pry

