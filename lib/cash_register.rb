class Cash_Regiter
  initialize(employee_discount = 20)
    @total = 0 
    @employee_discount = 20
    @purchase_list = {}
  end
  
  def total
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    @purchase_list[title => quantity]
    @total += price * quantity
  end
  
  def apply_discount
end
