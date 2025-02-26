require 'rails_helper'

RSpec.describe StringCalculator, type: :model do
  describe "#add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number" do
      expect(StringCalculator.add("1")).to eq(1)
      expect(StringCalculator.add("5")).to eq(5)
    end

    it "returns the sum of two comma-separated numbers" do
      expect(StringCalculator.add("1,5")).to eq(6)
      expect(StringCalculator.add("2,3")).to eq(5)
    end

    it "returns the sum of numbers separated by new lines" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
      expect(StringCalculator.add("4\n5\n6")).to eq(15)
    end
  end
end
