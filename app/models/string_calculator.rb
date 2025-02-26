class StringCalculator < ApplicationRecord
    def self.add(numbers)
        return 0 if numbers.empty?
        
        if numbers.start_with?("//")
          delimiter, numbers = numbers.split("\n", 2)
          delimiter = delimiter[2..]
        else
          delimiter = /,|\n/
        end
        
        numbers.split(delimiter).map(&:to_i).sum
      end
end
