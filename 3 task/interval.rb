# frozen_string_literal: true

# Interval class
class Interval
  def initialize(integer_start, integer_end)
    @answer = 1
    @integer_start = integer_start
    @integer_end = integer_end
  end

  def count
    temp = @integer_start

    while temp < @integer_end
      multiply(temp) if temp.even?
      temp += 1
    end
  end

  def multiply(number)
    @number = number
    @answer *= number
  end

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

interval = Interval.new(integer_start, integer_end)

interval.count
interval.print_answer
