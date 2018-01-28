class CashRegister
    attr_accessor :total, :discount, :item

    def initialize(discount = 0)
      @item = []
      @discount = discount
      @total = 0.0
    end

    def cash_register
      CashRegister.new
    end

    def cash_register_with_discount(discount)
      CashRegister.new(discount)
    end

    def discount
      @discount = 20
    end

    def add_item(item, price, quantity = 1)
      @item << item
      @total += (price * quantity)
    end

    def apply_discount
      if @discount > 0
        @total *= (1 - @discount.fdiv(100))
        "After the discount, the total comes to $#{@total.floor}."
      else
        "There is no discount to apply."
      end
    end

    def items

    end

end
