a = ["a","b","c","d","f","g"]

a.each_with_index do |item, index|
    puts "item:#{item}, index: #{index}, a:#{a}"
    a.delete(a)
end