# Runtime 0 100%
# Memory 213.75 mb 74.68%  -0.02 mb
# Complexity Time O(n)
def fizz_buzz(n)
  (1..n).map do |number|
    if number % 3 == 0  && number % 5 == 0
      "FizzBuzz"
    elsif number % 3 == 0
      "Fizz"
    elsif number % 5 == 0
      "Buzz"
    else
      number.to_s
    end
  end
end
