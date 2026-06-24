def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(numbers)
  numbers.sum
end

def multiply(a, b)
  a * b
end

def power(base, exponent)
  base ** exponent
end

def factorial(n)
  result = 1
  (1..n).each { |i| result *= i }
  result
end