class CashRegister

attr_accessor :total, :discount, :items, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do
      @items << item
    end
    self.last_transaction = price * quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = total * (100 - discount)/100
      "After the discount, the total comes to $#{self.total}."
    end
  end

    def void_last_transaction
      self.total -= last_transaction
    end
end
