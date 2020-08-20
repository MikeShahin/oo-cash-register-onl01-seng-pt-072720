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
    discount_decimal = (self.discount / 10)
    disc = discount_decimal * self.total
    self.total -= disc 
  end
end
