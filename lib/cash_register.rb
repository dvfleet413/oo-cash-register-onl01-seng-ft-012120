class CashRegister
  attr_accessor :total, :discount
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(name, price)
  
  end
end 
