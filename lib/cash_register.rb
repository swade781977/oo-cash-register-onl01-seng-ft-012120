require 'pry'
class CashRegister
  def initialize(employee_discount = 0)
    @total = 0 
    @employee_discount = employee_discount
    @purchase_list = []
    @price = 0
    @quantity = 0 
  end
  attr_accessor :total, :employee_discount, :purchase_list, :price, :quantity
  def discount
    @employee_discount
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @purchase_list.fill(title,@purchase_list.size, )
    @price = price
    @quantity = quantity
    @total += price * quantity
  end
  
  def apply_discount
    if @employee_discount == 0 
      d = "There is no discount to apply."
      d
    else
      a = @employee_discount/100.0  
      b = @total * a
      @total = @total - b
      @total = @total.to_i
      c = "After the discount, the total comes to $#{@total}."
      c
    end
  end
  
  def items
     @purchase_list.inspect
  end
  def void_last_transaction
    @total = @total - (@price * @quantity)
  end
end

