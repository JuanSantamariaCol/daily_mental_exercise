# @param {Integer[]} nums
# @return {Integer[]}
# Time Limit :P
def product_except_self(nums)
    result = nums.dup
    nums.each_with_index do |item, i| 
        new_arr = nums.dup
        new_arr.delete_at(i)
        result[i] = new_arr.reduce(1) { | acum , number | acum * number }
    end
    result
end


cases = [[1,2,3,4],[-1,1,0,-3,3]]
cases.each do |single|
    pp product_except_self(single)
end
