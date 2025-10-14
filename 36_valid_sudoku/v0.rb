def is_valid_sudoku(board)
    sub_boxes = {}
    board_size = board.size

    board.each_with_index do |row, i|

        return false if row.tally.reject{ |k| k == "."}.values.uniq.select{ |value|  value > 1}.any?

        row.each_with_index do |item, y|
            if i == 0
                arr = []
                for z in (0..board_size-1)
                    arr << board[z][y]
                end
                verified_colums = true if y == board_size - 1

                return false if  arr.tally.reject{ |k| k == "."}.values.uniq.select{ |value|  value > 1}.any?
            end

            next if item == "."

            if ( i >= 0  && i <= 2 ) && ( y >= 0 && y <=2 )
                sub_boxes["C1"] = [] unless sub_boxes.has_key? "C1"
                sub_boxes["C1"] << item 
            elsif ( i >= 0  && i <= 2 ) && ( y >= 3 && y <= 5)
                sub_boxes["C2"] = [] unless sub_boxes.has_key? "C2"
                sub_boxes["C2"] << item 
            elsif ( i >= 0  && i <= 2 ) && ( y >= 6 && y <= 8)
                sub_boxes["C3"] = [] unless sub_boxes.has_key? "C3"
                sub_boxes["C3"] << item 
            elsif ( i >= 3  && i <= 5 ) && ( y >= 0 && y <= 2)
                sub_boxes["C4"] = [] unless sub_boxes.has_key? "C4"
                sub_boxes["C4"] << item
            elsif ( i >= 3  && i <= 5 ) && ( y >= 3 && y <= 5)
                sub_boxes["C5"] = [] unless sub_boxes.has_key? "C5"
                sub_boxes["C5"] << item 
            elsif ( i >= 3  && i <= 5 ) && ( y >= 6 && y <= 8)
                sub_boxes["C6"] = [] unless sub_boxes.has_key? "C6"
                sub_boxes["C6"] << item 
            elsif ( i >= 6  && i <= 8 ) && ( y >= 0 && y <= 2)
                sub_boxes["C7"] = [] unless sub_boxes.has_key? "C7"
                sub_boxes["C7"] << item 
            elsif ( i >= 6  && i <= 8 ) && ( y >= 3 && y <= 5)
                sub_boxes["C8"] = [] unless sub_boxes.has_key? "C8"
                sub_boxes["C8"] << item 
            else 
                sub_boxes["C9"] = [] unless sub_boxes.has_key? "C9"
                sub_boxes["C9"] << item 
            end
        end
    end
    
    sub_boxes.each do |v,k|
        return false if k.tally.values.uniq.select{ |value|  value > 1}.any?
    end

    true
end

cases = [[["5","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]],
[["8","3",".",".","7",".",".",".","."],["6",".",".","1","9","5",".",".","."],[".","9","8",".",".",".",".","6","."],["8",".",".",".","6",".",".",".","3"],["4",".",".","8",".","3",".",".","1"],["7",".",".",".","2",".",".",".","6"],[".","6",".",".",".",".","2","8","."],[".",".",".","4","1","9",".",".","5"],[".",".",".",".","8",".",".","7","9"]],
[[".",".","4",".",".",".","6","3","."],[".",".",".",".",".",".",".",".","."],["5",".",".",".",".",".",".","9","."],[".",".",".","5","6",".",".",".","."],["4",".","3",".",".",".",".",".","1"],[".",".",".","7",".",".",".",".","."],[".",".",".","5",".",".",".",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".",".","."]],
[["7",".",".",".","4",".",".",".","."],[".",".",".","8","6","5",".",".","."],[".","1",".","2",".",".",".",".","."],[".",".",".",".",".","9",".",".","."],[".",".",".",".","5",".","5",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".","2",".","."],[".",".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".",".","."]]]

cases.each do |single_case|
    pp is_valid_sudoku(single_case)
end 