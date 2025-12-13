# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
# Runtime 0 ms 100 %
# Memory 216.23 mb 14.58%
# Complexity Time O(n) 
def min_operations(nums, k)
    result = 0 
    total = nums.sum
    while total % k != 0
        total -= 1
        result += 1  
    end
    
    result
end