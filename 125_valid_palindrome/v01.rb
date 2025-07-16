# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s.downcase.delete('^a-z0-9').reverse == s  
end

s = "A man, a plan, a canal: Panama"
is_palindrome(s)