# frozen_string_literal: true

def take_place_or_volume
  train = choose_train
  puts "Number: #{train.number}, Type: #{train.type}, Carriages: #{train.carriages.count}"
  i = 1
  train.each_carriage do |carriage|
    puts "#{i}: #{carriage.info}"
    i += 1
  end
  puts 'Choose carriage by number'
  carriage_index = gets.chomp.to_i
  carriage = train.carriages[carriage_index - 1]
  case carriage.type
  when :passenger
    carriage.take_a_seat
    puts 'Вы заняли 1 место'
  when :cargo
    puts "Введите обьем который хотите занять! Свободно: #{carriage.available_volume}"
    volume = gets.chomp.to_i
    if carriage.taken_volume(volume)
      puts "Вы заняли обьем #{volume}"
    else
      puts 'Вы не можете занять столько обьема'
    end
  end
  end
