# @param {Integer[]} nums
# @return {Integer[]}
# Runtime 3 ms 66.67 %
# Memory 212.04 mb 100%
# Complexity Time O(n) 
def build_array(nums)
    new_arr = [0]*nums.size
    nums.each_with_index do |item, i| 
        new_arr[i] = nums[item]
    end
    new_arr
    
end