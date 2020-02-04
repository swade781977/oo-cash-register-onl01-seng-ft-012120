class Cash_Regiter
  initialize(employee_discount = 0)
    @total = 0 
    @employee_discount = employee_discount
    @purchase_list = []
    @price = 0
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @purchase_list.push(title)
    @price = price
    @total += price * quantity
  end
  
  def apply_discount
    if employee_discount == 0 
      puts "There is no discount to apply."
    end
    a = @employee_discount.to_string
    a = ".#{a}"
    a.to_i 
    @total = @total - (@total * a)
    puts "After the discount, the total comes to #{@total}."
  end
  def items
     puts "#{purchase_list}"
  end
  def void_last_transaction
    
  end
end
