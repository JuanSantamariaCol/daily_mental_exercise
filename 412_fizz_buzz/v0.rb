# Runtime 0 100%
# Memory 213.77 mb 74.68%
# Complexity Time O(n)
def fizz_buzz(n)
  result = []
  (1..n).to_a.each do |number|
    if (number % 3 == 0) && (number % 5 == 0)
      result << "FizzBuzz"
    elsif number % 3 == 0
      result << "Fizz"
    elsif number % 5 == 0
      result << "Buzz"
    else
      result << number.to_s
    end
  end
  result
end

pp fizz_buzz(3)