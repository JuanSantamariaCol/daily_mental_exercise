# @param {Integer[]} nums
# @return {Boolean}
# Runtime 20 ms 87.99 %
# Memory 226.02 mb 82.96%
# Complexity Time O(n) 
def contains_duplicate(nums)
    nums.uniq.size == nums.size
end

cases = [[1,2,3,1],[1,2,3,4],[1,1,1,3,3,4,3,2,4,2]]
cases.each do |single_case|
    puts contains_duplicate(single_case)
end