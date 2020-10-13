# frozen_string_literal: true

# Interval class
class Interval
  # initialize starting variables
  def initialize(integer_start, integer_end)
    @answer = 1
    @integer_start = integer_start
    @integer_end = integer_end
  end

  # main counting method
  def count
    temp = @integer_start
    # ! go trough all numbers throughout the range
    while temp < @integer_end
      multiply(temp) if temp.even? # if number is even multiply
      temp += 1 # moves to another number
    end
  end

  # multiply a number with an answer
  def multiply(number)
    @number = number
    @answer *= number # multiply numbers
  end

  # check if number is positive
  def print_answer
    if @answer == 1
      puts 'No range chosen'
    else
      puts "All whole numbers multiplied in a range: #{@answer}"
    end
  end
end

puts 'write interval start'
integer_start = gets.chomp.to_i

puts 'write interval end'
integer_end = gets.chomp.to_i

# Creates object
interval = Interval.new(integer_start, integer_end)

# Use object
interval.count
interval.print_answer
