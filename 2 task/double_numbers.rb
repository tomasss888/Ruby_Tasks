# frozen_string_literal: true

hundred = 1
result_full = 0

puts 'write a whole number'
input = gets.chomp.to_i

# ! checks if number is whole
if input.positive?

  # ! go trough all number one by one
  while input != 0

    last_number = input % 10 # get last number
    result = hundred * 11 * last_number # make it into double number

    result_full += result # add to result number
    input /= 10 # takes away already used number
    hundred *= 100 # multiples to make place for next number
  end

  puts "double numbers  #{result_full}"

else puts 'Incorrect number'

end
