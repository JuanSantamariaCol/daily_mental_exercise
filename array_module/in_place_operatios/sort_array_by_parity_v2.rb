# Aprendizaje Aveces los metodos de rails son costosos cuando se agrega el eve
def sort_array_by_parity(nums)
    new_arr = []
    nums.each { |num| (num % 2  == 0 ) ? new_arr.prepend(num) : new_arr.append(num) }
    new_arr
end

nums = [3,1,2,4]

pp sort_array_by_parity(nums)