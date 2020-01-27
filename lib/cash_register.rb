require 'pry'
class CashRegister
  attr_accessor :total, :previous_total, :discount, :items
  def initialize(employee_discount = 0)
    @items = []
    @total = 0
    @discount = employee_discount
  end
  
  def add_item(name, price, quanity = 1)
    @previous_total = @total
    @total += price * quanity
    @items << name
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
end 
