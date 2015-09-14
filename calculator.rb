#require pry
#you can use binding.pry to stop the program and inspect for bugs

puts "Welcome to my Simple Calcular!"
puts "What is the first number?"
num1 = Integer(gets.chomp) rescue nil

while num1 == nil do
  puts "Oops! You have entered a non-numeric value, Try Again"
  num1 = Integer(gets.chomp) rescue nil
end

puts "What is the second number?"
num2 = gets.chomp
while num2 == nil do
  puts "Oops! You have entered a non-numeric value, Try Again"
  num2 = Integer(gets.chomp) rescue nil
end

puts "Press 1 to add, 2 to subtract, 3 to multiply and 4 to divide"
operator = Integer(gets.chomp) rescue nil

#understand the type of variable you are working with
while operator == nil || operator < 1 || operator > 4 do
  puts "Please chose one of the 4 options!"
  operator = Integer(gets.chomp) rescue nil
end

if operator == 1
  result = num1.to_i + num2.to_i
elsif operator == 2
  result = num1.to_i - num2.to_i
elsif operator == 3
  result = num1.to_i * num2.to_i
elsif operator == 4
  result = num1.to_f / num2.to_f
end

puts "Result is #{result}"
