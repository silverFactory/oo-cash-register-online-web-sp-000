class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @items << title * quantity
    @total = @total + price * quantity
  end
end
