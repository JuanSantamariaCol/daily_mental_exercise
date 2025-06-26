def running_sum(nums)
  sum = 0
  nums.map! do |num|
    sum += num
  end
  nums
end


# nums.map! itera sobre cada elemento del array nums y modifica el array original en lugar de crear uno nuevo.
# Para cada elemento num en nums, se suma el valor de num a la variable sum.
# El resultado de cada iteración (el valor acumulado de sum) reemplaza el valor original en el array nums.