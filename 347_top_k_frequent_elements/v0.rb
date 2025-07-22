# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
# Runtime 0ms (100%) Memory: 212.59 MB (57.79%)
def top_k_frequent(nums, k)
    nums.tally.sort_by { |k,v| -v }.to_h.keys.first(k)
end

nums = [-1,-1]
k = 1

pp top_k_frequent(nums, k)