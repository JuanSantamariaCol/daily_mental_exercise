def running_sum(nums)
  nums.each_with_index do |element, index|
    next if index.zero? 

    nums[index] = nums[index - 1] + element
  end
  nums
end

nums = [1,2,3,4]
pp running_sum(nums)

# Cost O(n)
# Space Complex O(1)

