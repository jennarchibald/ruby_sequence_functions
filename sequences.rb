

def fibonacci_numbers(number)
  fibonacci = []
  counter = 0
  while counter < number
    new_number = 1
    if fibonacci[-2] == nil
      fibonacci << new_number
    else
      new_number = fibonacci[-1] + fibonacci[-2]
      fibonacci << new_number
    end
    counter += 1
  end
  return fibonacci
end

p fibonacci_numbers(10)
p fibonacci_numbers(100)
