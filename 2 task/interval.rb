# frozen_string_literal: true

puts 'write interval start'
integer_start = gets.chomp.to_i # gets interval starting point

puts 'write interval end'
integer_end = gets.chomp.to_i # gets interval ending point

answer = 1

temp = integer_start

while temp < integer_end
  answer *= temp if temp.even? # if number is even multiply
  temp += 1 # moves to another number
end

puts "All whole numbers multiplied in a range: #{answer}"
