# @param {Integer[][]} mat
# @return {Integer[]}
def find_diagonal_order(mat)
    solution = []
    if mat.size >= mat[0].size
        # Case vertical matriz 
        longes_vertial_to_repeat = mat[0].size
        conter = 1
        latest = "00"
        while longes_vertial_to_repeat != 0 do 
            conter.times do 
                solution << mat[latest[0]][latest[1]]
                if conter > 1
                    acum = latest.chars.last.to_i + 1
                    latest.pop
                    latest << 
                end
            end
            conter += 1 
        end
    else

    end

end