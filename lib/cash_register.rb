require 'pry'
class CashRegister
    attr_reader :discount, :items
    attr_accessor :total          # <- runs the current total

    def initialize(discount = 0)
        @total = 0        #<- class instance variable
        @discount = discount     #<- save instance varible @discount when you pass it in to initialize
        @items = []
    end

    def add_item(item, price, quantity = 1) 
        quantity.times do 
            @items << item
        end
        #@total += price * quantity
        @last_transaction = price * quantity
        @total += @last_transaction
    end

    def apply_discount
        # @total = @total * @discount / 100      #<- this gets you the discount amount
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total - (@total * @discount / 100) 
            "After the discount, the total comes to $#{@total}."  #<-string interpolate the return
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end

end





#create the class first ---- class CashRegister

#whats the difference between @total and total
#       @total is an instance variable 
#       total would be setter method
# default needs to be at 1 for add_item ->quantity = 1
#