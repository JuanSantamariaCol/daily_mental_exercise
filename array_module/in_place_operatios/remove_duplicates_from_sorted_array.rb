# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    long  = nums.count
    nums.uniq!
    nums.concat([0]*(long - nums.count))
end

nums = [0,0,1,1,1,2,2,3,3,4]
pp remove_duplicates(nums)