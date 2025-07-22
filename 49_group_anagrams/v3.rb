
# @param {String[]} strs
# @return {String[][]}
# BEST
def group_anagrams(strs)
    #Convertimos el str a su representacion en ASCII(bytes) luego contamos la frecuencia(tally) y finalmente hacemos un hash (huella de una estructura de datos no reversible) y los agrupa por huellas
    strs.group_by {|str| str.bytes.tally.hash}.values
end

strs = ["eat","tea","tan","ate","nat","bat"]
pp group_anagrams(strs)
