def smallestSubstring(S):

    # Initialize variables
    n, i, k, cnt, min_len = len(S), 0, 0, 0, float("inf")

    # Frequency array
    freq = [0] * 3

    while k < n:
        
        freq[int(S[k])] += 1
        if freq[int(S[k])] == 1:
            cnt += 1

        if cnt == 3:
            while freq[int(S[i])] > 1:
                freq[int(S[i])] -= 1
                i += 1
            min_len = min(min_len, k - i + 1)
            freq[int(S[i])] -= 1 # aqui se le resta un numero a a esto pro que no tendria sentido se alargaria empezasr desde el 312
            i += 1
            cnt -= 1
        k += 1
        print(f"freq: {freq} k:{k} i:{i} min_len:{min_len} cnt: {cnt}")

    return -1 if min_len == float("inf") else min_len


# Driver code
S = "10022012"

print(smallestSubstring(S))