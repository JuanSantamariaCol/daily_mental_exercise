# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    
    pointer_l = 0 
    pointer_r = 0
    max = 0
    counter = 0
    memory = {}
    
    while pointer_r <= s.size - 1 
        if memory.has_key? s[pointer_r]
            max = (pointer_r - pointer_l) if (pointer_r - pointer_l) > max
            pointer_l = s.slice(pointer_l , pointer_r).chars.find_index(s[pointer_r]) + pointer_l + 1 
            memory = {}
            memory[s[pointer_l]] = 1
            pointer_r = pointer_l + 1 
        else
            memory[s[pointer_r]] =  1
            pointer_r +=1
            max = (pointer_r - pointer_l) if (pointer_r - pointer_l) > max
        end
    end
    max
end
a = ["\"#$%&'()"]

a.each_with_index do |item, index|
    pp length_of_longest_substring(item)
end

