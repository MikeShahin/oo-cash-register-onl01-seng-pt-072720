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
    discount_decimal = (discount.to_f / 100).to_i
    disc = (discount_decimal * total)
    self.total -= disc 
  end
end
