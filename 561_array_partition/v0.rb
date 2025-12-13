# @param {Integer[]} nums
# @return {Integer}
# Runtime 38 ms 50 %
# Memory 214.42 mb 75%
def array_pair_sum(nums)
    result = 0 
    nums.sort! 

    nums.each_slice(2) do |a, b|
        result += [a,b].min 
    end
    result
end