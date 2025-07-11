
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.size != t.size
    for c in 'a'..'z'
        return false if s.count(c) != t.count(c)
    end
    return true

end


s = "aacc"
t = "ccac"

pp is_anagram(s,t)