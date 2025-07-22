#Runtime 66 ms (Beats 93.63%), Memory 211.55 MB (Beats 29,73%)

def length_of_longest_substring(s)
    pointer_l = 0 
    max = 0 
    memory = {}
    s.chars.each_with_index do |letter, pointer_r|
        if memory.has_key?(letter) && memory[letter] >= pointer_l #La posicion de la letra tiene que se mayor a la del puntero_l para que se corra el puntero l (incial)  
            pointer_l =  memory[letter] + 1 
        end
        memory[letter] = pointer_r
        max  = ( pointer_r -  pointer_l) + 1  if (( pointer_r - pointer_l) + 1) > max
    end
    max
end

s = "abba"
pp length_of_longest_substring(s)
