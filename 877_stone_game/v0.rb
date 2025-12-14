# @param {Integer[]} piles
# @return {Boolean}
#Wrong Answer because i don take the way "optimal game for both players"
def stone_game(piles)
    score_alice = 0
    score_bob = 0 
    
    while ((piles.length) > 0) do 
        2.times do |turn| 
            if piles.first > piles.last
                score = piles.shift
            else
                score = piles.pop
            end 
            
            score_alice += score if turn == 0
            score_bob += score if turn == 1
        end
    end
    return score_alice > score_bob 
    
end