
# @param {String[]} strs
# @return {String[][]}
#Runtime 38 ms (Beats 70.16%), Memory 217.48 MB (Beats 50.79%)
def group_anagrams(strs)
    memory = {}
    strs.each_with_index do |item, index|
        key = item.chars.sort.join 
        memory[key] = [] unless memory.has_key? key
        memory[key] << item 
    end
    memory.values
end

strs = [""]
pp group_anagrams(strs)