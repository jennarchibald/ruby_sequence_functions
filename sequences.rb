

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

# p fibonacci_numbers(10)
# p fibonacci_numbers(100)


# sequence starts at 1 and each subsequent number is the description of the previous numbers digits i.e. 1, 11, 12, 21, 1211...

def say_what_you_see(number)
  counter = 0
  array = [1]
  while counter < number

    next_number = ""
    digits = array[counter].to_s.chars

    digit_counter = 0
    how_many = 1

    while digit_counter < digits.length

      if digits[digit_counter] == digits[digit_counter + 1]
        how_many += 1
      else
        next_number << how_many.to_s
        next_number << digits[digit_counter]
        how_many = 1
      end

      digit_counter += 1
    end

    counter += 1
    array << next_number.to_i
  end
  return array
end

p say_what_you_see(10)
