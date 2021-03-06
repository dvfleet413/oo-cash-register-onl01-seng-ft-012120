require 'pry'
class CashRegister
  attr_accessor :total, :previous_total, :discount, :items
  def initialize(employee_discount = 0)
    @items = []
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(name, price, quantity = 1)
    @previous_total = @total
    @total += price * quantity
    quantity.times {@items << name}
  end
  
  def apply_discount
    discount_decimal = (100-@discount.to_f)/100
    message = nil
    if @discount > 0
      @total *= discount_decimal
      message =  "After the discount, the total comes to $#{@total.round}."
    else
      message = "There is no discount to apply."
    end
  message
  end 
  
  def void_last_transaction
    @total = @previous_total
  end
end 
