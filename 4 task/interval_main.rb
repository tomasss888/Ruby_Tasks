# frozen_string_literal: true

require_relative 'interval_class'

puts 'write interval start'
integer_start = gets.chomp.to_i

puts 'write interval end'
integer_end = gets.chomp.to_i

# Creates object
interval = Interval.new(integer_start, integer_end)

# Use object
interval.count
puts interval.print_answer
