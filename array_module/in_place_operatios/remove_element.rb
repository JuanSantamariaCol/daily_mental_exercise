# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.delete(val)
    nums.count
end

nums = [3,2,2,3]
pp remove_element(nums, 3)