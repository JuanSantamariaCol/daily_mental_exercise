
def check_if_exist(arr)
    arr.each do |item|
        return true if arr.count(item) > 1  && item == 0
        if (arr.include? (item.to_f/2)) && (arr.find_index(item) != arr.find_index(item.to_f/2))
            return true
        end
    end
    return false 
end

arr = [10,2,5,3]

puts check_if_exist(arr)