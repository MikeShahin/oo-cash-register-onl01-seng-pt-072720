require 'pry'

class CashRegister
  
  attr_accessor :total, :discount, :items
  
  items = []
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    self.title << items
  end
  
  def apply_discount
    if discount != 0
      discount_decimal = discount / 100.to_f
      disc = (discount_decimal * total)
      self.total -= disc.to_i 
      "After the discount, the total comes to $#{total}."
    else
      "There is no discount to apply."
    end
  end
end

