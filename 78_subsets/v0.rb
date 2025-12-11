# @param {Integer[]} nums
# @return {Integer[][]}

# Runtime 0 MS 100 %
# Memory 211.55 MB 30.77%
# Complexity Time O(n*2**n)

def subsets(nums)
    results = []
    (0..nums.size).each do |length|
        results.concat(nums.combination(length).to_a)
    end
    results
end