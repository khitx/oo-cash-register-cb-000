class CashRegister
    attr_accessor :total

    def initialize(discount = 0)
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

    def add_item(item, price)
      @total += price
    end
end
