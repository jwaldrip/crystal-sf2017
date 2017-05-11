module CrystalSF2017
  class Overflow(T) < Exception
  end

  class Crystaller
  end

  class Cup
  end

  class CrystalCup(T) < Cup
    CAPACITY = 300_f32

    def initialize(@owner : Crystaller)
      @amount = 0_f32
    end

    def fill(with amount)
      if @amount + amount > CAPACITY
        raise Overflow(T).new
      end
      @amount += amount
    end

    def drink(amount)
      if @amount < amount
        left = @amount
        @amount = 0
        return left
      end
      @amount -= amount
      amount
    end

  end
end

# Fill and drink the cup
cup = CrystalSF2017::CrystalCup(String).new(CrystalSF2017::Crystaller.new)
cup.fill(100_f32)
while cup.@amount > 0
  cup.drink(10_f32)
  puts cup.@amount
end
