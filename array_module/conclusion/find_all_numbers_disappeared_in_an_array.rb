# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    nums.sort!
    ((1..nums.size).to_a - nums)
end

nums = [1,1]
pp find_disappeared_numbers(nums)