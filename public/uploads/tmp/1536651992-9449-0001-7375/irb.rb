# frozen_string_literal: true

line_num = 0
input = ''
loop do
  print "#{line_num += 1}?:"
  line = gets
  break if line.strip == 'exit'

  if line.strip == ''
    puts ''
    puts eval(input)
    puts 'Evaluating...'
    input = ''
  else
    input += line
  end
end
