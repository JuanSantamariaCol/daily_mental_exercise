# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# Runtime 0ms 100%
# Memory 212.35 MB 50.21%
# Complexity O(N)
def two_sum(nums, target)
    memory = {}
    nums.each_with_index do |number, i|
        y  = target - number
        if memory.has_key? y
            return [memory[y], i]
        else
            memory[number] = i
        end
    end
end


nums = [2,7,11,15]
target = 9
pp two_sum(nums, target)