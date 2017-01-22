# Add 1 to every item in a given array [4, 34, 6, 67,34, 45]
array =[4, 34, 6, 67,34, 45]
array2 = array.map { |e| e + 1 }
puts array2

#Looping through sentence and finding the shortest word
array = "Looping through sentence and finding the shortest word"
longest = array.split(' ').max_by(&:length)
p longest

Tunr 1D array into 3 elemental 2D array
array =[4, 34, 6, 67,34, 45]
array2 = array.each_slice(3).to_a
p array2

Given an integer, if the integer is divisible by 3, print "Fizz". If the integer is divisible by 5, print "Buzz". If the integer is divisble by 3 and 5, print "FizzBuzz". If none of the above. print out the integer

def fizzbuzz(number)
  if  number % 15 == 0
    return "Fizzbuzz"
  elsif number % 5 == 0
    return "Buzz"
  elsif number % 3 == 0
    return "Fizz"
  else
    return number
  end
end

# p fizzbuzz(3)
p fizzbuzz(3) == "Fizz" ? "correct" : "wrong"

# p fizzbuzz(5)
p fizzbuzz(5) == "Buzz" ? "correct" : "wrong"

# p fizzbuzz(15)
p fizzbuzz(15) == "Fizzbuzz" ? "correct" : "wrong"

# p fizzbuzz(4)
p fizzbuzz(4) == 4 ? "correct" : "wrong"

Like the previous challenge, you are given a method scoring with an array passed as an argument. Each element of the array is of class User.

User has two public methods, is_admin? and update_score. Your task in this challenge is to use the control structure unless and update all elements of the array who are not admins.
update_score of every user in the array unless the user is admin
def scoring(array)
    array.each do |x|
      unless x.is_admin?
        x.update_score
      end
    end
end