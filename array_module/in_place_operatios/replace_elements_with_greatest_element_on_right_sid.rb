
def replace_elements(arr)
    arr_length = arr.count
    arr.each_with_index do |item, index|
        if index == (arr_length -1)
            arr[index] = -1 
            return arr
        end
        upper_case = arr.slice(index + 1..).max
        arr[index] = upper_case
    end
    return arr
end

arr = [17,18,5,4,6,1]
pp replace_elements(arr)uugttt