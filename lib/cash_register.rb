class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
  quantity.times do
    @items << title
    @total = @total + price
  end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total - @total * @discount / 100
      "After the discount, the total comes to $#{@total}."
    end
  end

end
