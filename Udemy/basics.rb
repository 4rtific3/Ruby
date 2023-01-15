## Printing
## puts == put string. This does not return a result

p "Hello World"

## String Concatenation

f_name = "Johan"
l_name = "Goh"
# puts f_name + " " + l_name

## String interpolation (f-string in Python equivalent)
## This does not work if the string is contained within single quotes

puts "My first name is #{f_name} and my last name is #{l_name}"
full_name = "#{f_name} #{l_name}"
puts full_name

## Element Types

# p full_name.class

## Check in-built methods for objects

# p full_name.methods

int_to_str = 10.to_s
# p int_to_str

## empty VS nil

# p "".empty?
# p "".nil?

## Type comparisons

p 10 === 10.0
p 10.eql?(10.0)

## String substitution (.replace in Python)
## gsub == global sub. Replaces all instances

old_sentence = "Welcome to the jungle"
new_sentence = old_sentence.sub("the jungle", "utopia")
# p new_sentence

## Getting inputs from user
## gets.chomp saves inputs as strings

# puts "What is your name?"
# user_name = gets.chomp
# puts "Your name is #{user_name}" 

# puts "Input a number to multiply by 2"
# number = gets.chomp
# puts "#{number} multiplied by 2 is #{number.to_i*2}"

## randint & repeating commands
## Prints out a random integer between 0 and 9, 10 times.

# 10.times{puts rand(10)}

## Methods (Functions)

def multiply(num1, num2)
    num1 * num2
end

# puts multiply(3, 5)

## if/elsif/else/end
## && ||

## Range

range1 = 1..10
array1 = range1.to_a

p array1

range2 = "a".."z"
p range2.to_a

## Mutate caller (Save changes made using methods): .method!

## This line does not save the shuffled array, and points back to the original array
# p array1.shuffle
# p array1

## This line mutates array and makes the shuffle permanent
# p array1.shuffle!
# p array1

## Adding items to the end of an array
## Append also works

array1 << 11
p array1

## Adding items to the start of an array

array1.unshift(0)
p array1

## Removing duplicate values

array1.uniq!

## Checking to see if element is present in array

p array1.include?(0)

## Creating an array from a string

str_to_arr = %w(hello world i am johan)
p str_to_arr

## Iterating through each element in an array

# array1.each do |i|
#     print i.to_s + " "
# end

## Preferred method (single line)

array1.each {|i| print i.to_s + " "}
puts

## Printing elements in an array that satisfy a boolean statement

p array1.select {|i| i.even?}

## Hash aka Dictionary

hash1 = {'a' => 1, 'b' => 2, 'c' => 3}
p hash1['b']

## Symbols in hashes

hash2 = {a: 1, b: 2, c: 3, d: "4", e: 5, f: "6"}
p hash2
p hash2[:b]

## Iterating through hashes

hash1.each {|key, value| p "The key is #{key} (#{key.class}) and the value is #{value} (#{value.class})"}

## Removing keys-value pairs based on class of value

p hash2
hash2.each {|k, v| hash2.delete(k) if v.is_a?(String)}
p hash2