
# @param {String[]} strs
# @return {String[][]}
#Runtime 38 ms (Beats 70.16%), Memory 217.48 MB (Beats 50.79%)
def group_anagrams(strs)
    #Convertimos el str a su representacion en ASCII(bytes) luego contamos la frecuencia y finalmente hacemos un hash (huella de una estructura de datos ) y si la hulla es igual lo agrupa 
    strs.group_by {|str| str.bytes.tally.hash}.values
end

strs = ["eat","tea","tan","ate","nat","bat"]
pp group_anagrams(strs)

a