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
