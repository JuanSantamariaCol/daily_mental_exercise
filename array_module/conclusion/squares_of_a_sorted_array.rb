# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    nums.map! { |n| n**2 }.sort!
end


nums = [-4,-1,0,3,10]
pp sorted_squares(nums)