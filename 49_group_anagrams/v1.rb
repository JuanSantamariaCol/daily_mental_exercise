
# @param {String[]} strs
# @return {String[][]}
# Time Limit Exceeded but works
def group_anagrams(strs)
    memory = {}
    strs.each_with_index do |item, index|
        added = false
        memory.keys.each do |key|
            if is_anagram(item, key)
                memory[key] << item
                added = true
                break
            end
        end 
        unless added 
            memory[item] = [item]
        end
    end
    memory.values
end

def is_anagram(s, t)
    return false if s.size != t.size
    for c in 'a'..'z'
        return false if s.count(c) != t.count(c)
    end
    return true
end

strs = ["eat","tea","tan","ate","nat","bat"]
pp group_anagrams(strs)