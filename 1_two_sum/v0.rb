# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
# TIME LIMIT EXCEEDED
def two_sum(nums, target)
    nums.each_with_index do |item, index|
        nums[index + 1 ..].each.with_index(index + 1) do |item_two, index_two|
            if item + item_two == target
                return [index , index_two]
            end
        end
    end
end

nums = [2,7,11,15]
target = 9
pp two_sum(nums, target)