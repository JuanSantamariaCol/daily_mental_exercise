# @param {Integer[]} nums
# @return {Boolean}
# Runtime 50 ms 23.74%
# Memory 230.52 mb 56.15%
# Complexity Time O(n)
# In this solution, the goal is to use the recommended themes.
def contains_duplicate(nums)
    memory = {}
    nums.each do |number|
        memory[number] = 0 unless memory.has_key? number
        memory[number] += 1 
        return true if memory[number] > 1
    end
    false
end

cases = [[1,2,3,1],[1,2,3,4],[1,1,1,3,3,4,3,2,4,2]]
cases.each do |single_case|
    puts contains_duplicate(single_case)
end