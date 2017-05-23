def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def sum(numbers)
  if numbers==[]
    0
  else
    numbers.reduce(:+)
  end
end

def multiply(numbers)
  numbers.reduce(:*)
end

def power(number,exponent)
  number**exponent
end

def factorial(number)
  result = 1
  if number!=0
    (1..number).each{|num| result*=num}
  end
  result
end
