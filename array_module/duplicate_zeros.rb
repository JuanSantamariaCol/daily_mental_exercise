def duplicate_zeros(arr)
  n = arr.length
  i = 0
  while i < n do
    if arr[i] == 0
      arr.pop
      arr.insert(i,0)
      i += 1
    end
    i+=1
  end
  arr
end

arr = [1,0,2,3,0,4,5,0]
pp duplicate_zeros(arr)