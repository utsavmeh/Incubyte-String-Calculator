class StringCalculator < ApplicationRecord
    def self.add(numbers)
        return 0 if numbers.empty?
        
        if numbers.start_with?("//")
          delimiter, numbers = numbers.split("\n", 2)
          delimiter = delimiter[2..]
        else
          delimiter = /,|\n/
        end
        
        num_array = numbers.split(delimiter).map(&:to_i)
        negatives = num_array.select { |n| n < 0 }
        
        raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?
        
        num_array.sum
    end
end
