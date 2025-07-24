# @param {String} s
# @return {String}
# TODO: optimize urgently
# Runtime 1926 :P
def make_fancy_string(s)
    return s if s.size < 2
    result = ""
    substring = ""
    s.each_char.with_index do |char, index|
        if substring.empty?
            substring << char
            next
        end

        if substring.chars.last != char
            pp "diferent #{substring} char:#{char}"
            result << substring
            substring = ""
            substring << char 
            pp "diferent result: #{result} sub:#{substring}"
        else
            unless substring.size >= 2
                substring << char 
            end
        end
        if index == (s.size - 1) 
            result << substring
        end
    end
    result
end
s = "aab"
pp make_fancy_string(s)