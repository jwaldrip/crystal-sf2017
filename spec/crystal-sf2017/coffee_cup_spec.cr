require "../spec_helper"

describe CrystalSF2017::CrystalCup do
 it "drinks from the cup" do
    cup = CrystalSF2017::CrystalCup(String).new(CrystalSF2017::Crystaller.new)
    cup.fill with: 100_f32
    while cup.@amount > 0
      cup.drink(10_f32)
      puts cup.@amount
    end
    expect(cup.@amount).to eq(0)
 end
end
