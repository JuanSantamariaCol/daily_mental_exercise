# @param {String} s
# @param {String} t
# @return {Boolean}
# Runtime 64 ms (Beats 6.78%), Memory 216.47 MB (Beats 53.66%)
# In this solution, the goal is to use the recommended themes.
def is_anagram(s, t)
    return false if s.size != t.size
    memory = {}
    t.chars.each_with_index do |char, i|
        memory[s[i]] = 0 unless memory.has_key?(s[i])
        memory[char] = 0 unless memory.has_key?(char)
        memory[s[i]] += 1
        memory[char] -=1 
    end
    memory.values.uniq.size == 1 
end


s = "anagram"
t = "nagaram"

pp is_anagram(s,t)