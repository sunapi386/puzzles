
cases = gets.chomp.to_i
cases.times do |i|
  words = gets.chomp.split(' ').reverse.join(' ')
  puts "Case \##{1+i}: #{words}"
end
