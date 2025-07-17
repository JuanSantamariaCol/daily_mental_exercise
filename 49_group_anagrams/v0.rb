
# @param {String[]} strs
# @return {String[][]}
# Time Limit Exceeded but works
def group_anagrams(strs)
    memory = {}
    strs.each_with_index do |item, i|
        memory[item] = []
        strs.each.with_index(i+1) do |item_2, t| 
            if is_anagram(item,item_2)
                memory[item] << item_2
            end
        end
    end
    memory.values.uniq
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