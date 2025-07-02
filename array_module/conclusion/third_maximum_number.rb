# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    return nums.max if nums.size < 3
    max = nums.max
    result = 0

    3.times do 
        return max if nums.empty?
        result = nums.max 
        nums.delete(result)
    end
    return result
end

nums = [3,2,1]
pp third_max(nums)

