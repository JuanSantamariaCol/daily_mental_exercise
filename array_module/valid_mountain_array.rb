# @param {Integer[]} arr
# @return {Boolean}
def valid_mountain_array(arr)
    return false if arr.count < 3

    result_incre, index  = increase(arr)
    return false if result_incre

    result_decre = decrease(arr,index)
    return result_decre
end

def increase(arr)
    arr.each_with_index do |item, index|
        return true unless arr[index+1]
        if arr[index + 1] > arr[index]
            next
        elsif arr[index] == arr[index + 1]
            return [true, 0 ]
        else
            return false, index
        end
    end 
    return true
end

def decrease(arr, position)
    return false if position == 0 
    arr.each.with_index(position) do |item,index| 
        return true unless arr[index+1]
        if arr[index] > arr[index + 1]
            next
        elsif arr[index] == arr[index + 1]
            return false
        else
            return false 
        end
        return true
    end
end


arr = [9,8,7,6,5,4,3,2,1,0]

pp valid_mountain_array(arr)