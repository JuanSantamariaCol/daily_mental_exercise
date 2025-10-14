require 'set'

# Runtime 120 ms 64.62 %
# Memory 232.35 mb 30.77%
# Complexity Time O(n)

def longest_consecutive(nums)
    return 0 if nums.empty?

    set = nums.to_set
    max_len = 0

    set.each do |n|
        next if set.include?(n - 1)

        len = 1
        curr = n
        while set.include?(curr + 1)
            curr += 1
            len += 1
        end

        max_len = len if len > max_len
    end

    max_len
end
