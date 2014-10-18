# dict = Hash.new
# dict[' '] = "0"
# lens.zip('2'..'9').map{|l,c|(1..l).map{|k| c*k}}.flatten.zip('a'..'z').each{|p,ch| dict[ch]=p}

class PhoneConverter
  def initialize
    lens = [3,3,3,3,3,4,3,4]
    @dict = Hash.new
    @dict[' '] = "0"
    lens.zip('2'..'9').map{|l,c|(1..l).map{|k| c*k}}.flatten.zip('a'..'z').each{|p,ch| @dict[ch]=p}
    @last_push = ""
  end

  def lookup(char)
    to_push = @dict[char]
    @last_push = (@last_push[-1] == to_push[-1] ? " " : "") + to_push
  end
end

cases = gets.chomp.to_i
cases.times do |i|
  pc = PhoneConverter.new
  chars = gets.chomp.chars
  lst = chars.map { |ch| pc.lookup(ch) }
  puts "Case \##{1+i}: #{lst.join('')}"
end
