# @param {Integer[]} piles
# @return {Boolean}
# Runtime 3 ms 45.5 %
# Memory 211.54 mb
# Complexity O(2**n) 54.55 %
def stone_game(piles)
    score_alice = 0
    score_bob = 0 
    first_position = piles.first > piles.last ? "first" : "last"
    single_case(score_alice,score_bob,piles,"a",first_position)
end

def single_case(s_alice, s_bob, piles, turn, select_position)  
    return s_alice > s_bob if piles.size == 0

    if select_position == "first"
        score = piles.shift
        next_position = "last"
    else
        score = piles.pop
        nex_position = "first"
    end 
    
    s_alice += score if turn == "a"
    s_bob += score if turn == "b"
    
    
    
    single_case(s_alice, s_bob, piles, turn, next_position) || single_case(s_alice, s_bob, piles, turn == "a" ? "b" : "a" , select_position)
end