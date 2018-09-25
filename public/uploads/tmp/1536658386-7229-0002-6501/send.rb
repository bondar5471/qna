# frozen_string_literal: true

puts 'Enter string'
str = gets.chomp
puts 'Enter method'
method = gets.chomp.to_s
puts str.send(method)
