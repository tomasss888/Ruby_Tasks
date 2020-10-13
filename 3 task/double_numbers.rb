# frozen_string_literal: true

# double numbers class
class DoubleNumbers
  def initialize(input)
    @hundred = 1
    @result_full = 0
    @input = input
  end

  def count
    return unless check(@input) # checks if input correct

    while @input != 0

      last_number = @input % 10 # get last number
      result = @hundred * 11 * last_number # make it into double number

      @result_full += result
      @input /= 10 # takes away already used
      @hundred *= 100    # multiples to make place for next number
    end
  end

  def check(number)
    if number.positive?
      true
    else
      puts 'Wrong number'
      false
    end
  end

  def print_answer
    if @result_full != 0
      puts "double numbers  #{@result_full} "
    else
      puts 'No data'
    end
  end
end

puts 'write a whole number'
input = gets.chomp.to_i

db1 = DoubleNumbers.new(input)

db1.count
db1.print_answer
