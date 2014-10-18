

# https://code.google.com/codejam/contest/351101/dashboard#s=p0


def find_index(prices, credit)
  # can exist 2^items, combination which is closest to credit.
  pairs = prices.combination(2).to_a
  sums = pairs.map { |pair| pair.inject(:+) }
  # find sums that is closest and use the index to grab the pair
  sums.each_with_index { |s, i|
    if s == credit
        num1 = pairs[i][0]
        num2 = pairs[i][1]
        return [prices.index(num1)+1, prices.rindex(num2)+1]
    end
    }
end

def find_index_2(prices, credit)
  yarr_pirate = Hash.new() # what.
  prices.each_with_index do |p, i|
    if yarr_pirate[p] then
      return [yarr_pirate[p] + 1, i + 1]
    else
      yarr_pirate[credit-p] = i
    end
  end
end

cases = gets.chomp.to_i
cases.times do |i|
  credit = gets.chomp.to_i
  items = gets.chomp.to_i
  prices = gets.chomp.split(' ').map { |price| price.to_i }

  index = find_index_2(prices, credit)

  puts "Case \##{1+i}: #{index[0]} #{index[1]}"
end


# ruby has a .zip operator on array http://www.ruby-doc.org/core-2.1.3/Array.html
# oh nice.

# steve let me know if you can see this
# Yep
# Ruby's missing a zipWith construct, so far as I know, which lets you take two lists and merge them into one with a binary function.
# zipWith (+) [1,2] [3,4] == [4,6] for example.
# You'd have to do [1,2].zip([3,4]).map{|a,b| a+b}



    # it's not done yet
      # what does your else do.
  # the else tells us that if we find a price of that value, this index is it's pair

  # oh then perhaps you should get ready and skip the vid chat. you will do fine

#  vid chat?
#  Ok, but my interview is in 15 minutes. Yeah
