require 'pry'
class CashRegister

attr_accessor :total, :discount, :items, :last_total




    def initialize(discount = nil)
      @discount = discount
      @total = 0
      @items = []
    end

    def items
      @items
    end

    def discount
      @discount
    end

    def add_item(title, price, quantity = 1)
      self.total += price * quantity#<= probably copy this piece of block and change it to a subtraction
      quantity.times do
      items << title
      #need to connect this method to my #last_transaction
      end
    end

    def apply_discount
      if @discount
        @total = @total -= @discount*10
       "After the discount, the total comes to $#{@total}."
    else
       "There is no discount to apply."
      end
    end

    def

    def last_transaction
      binding.pry
      # trying to keep track of the last transaction
      @last_total = self.total -= price * quantity
      # need to keep track of a "finished transaction"
      # when dealing with a transaction is located in "#add_item"
    end

    def void_last_transaction
      #@last_total
    end

end
