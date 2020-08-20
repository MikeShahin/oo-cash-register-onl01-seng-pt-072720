require 'pry'

class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    discount_decimal = discount / 100.to_f
    disc = (discount_decimal * total)
    self.total -= disc.to_i 
    "After the discount, the total comes to #{total}."
  end
end

