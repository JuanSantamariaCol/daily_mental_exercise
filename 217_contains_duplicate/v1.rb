# @param {Integer[]} nums
# @return {Boolean}
# Runtime 17 ms 91.34 %
# Memory 225.50 mb 94.41%
# Complexity O(n) 
def contains_duplicate(nums)
    nums == nums.uniq!
end

cases = [[1,2,3,1],[1,2,3,4],[1,1,1,3,3,4,3,2,4,2]]
cases.each do |single_case|
    puts contains_duplicate(single_case)
end