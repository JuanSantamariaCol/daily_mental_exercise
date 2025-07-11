# @param {String} s
# @param {String} t
# @return {Boolean}
#Runtime 62 ms (Beats 5.52%), Memory 216.38 MB (Beats 51.56%)
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


s = "ab"
t = "a"

pp is_anagram(s,t)