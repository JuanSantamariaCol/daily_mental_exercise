def kids_with_candies(candies, extra_candies)
  results = []
  max = candies.max
  candies.each do |candy|
    results << ((candy + extra_candies) >= max)
  end
  results
end

puts kids_with_candies([12,1,12], 10) # [true,true,true,false,true]