def length_of_longest_substring(s)
    pointer_l = 0
    pointer_r = 0
    memory = {}
    cnt = 0
    max = 0 
    while pointer_r < s.size
        memory[s[pointer_r]] = 0 unless memory.has_key?(s[pointer_r])
        memory[s[pointer_r]] += 1 
        cnt += 1
        if memory[s[pointer_r]] == 2
            while memory[s[pointer_r]] > 1 
                memory[s[pointer_l]] -= 1
                cnt -=1
                pointer_l +=1
            end
        end
        max = cnt if max < cnt
        pointer_r += 1 
    end
    return max
end

s = "bbbbbbb"
pp length_of_longest_substring(s)
