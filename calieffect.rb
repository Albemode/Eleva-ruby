#version 1
puts "Welcome to the Call-ie-Effect"
puts ""

puts "Enter the first number"
n1 = gets.to_i()
puts ""

puts "Enter the second number"
n2 = gets.to_i()
puts ""

add = n1 + n2
subtract = n1 - n2
multiply = n1 * n2
divide = n1 / n2
power = n1 ** n2
sqrt1 = Math.sqrt(n1)
sqrt2 = Math.sqrt(n2)

puts "#{n1} + #{n2} = #{add}"
puts "#{n1} - #{n2} = #{subtract}"
puts "#{n1} * #{n2} = #{multiply}"
puts "#{n1} / #{n2} = #{divide}"
puts "#{n1} ** #{n2} = #{power}"
puts "#{n1} √ = #{sqrt1}"
puts "#{n2} √ = #{sqrt2}"

gets()



#version 2

def get_int_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [add], [multiply], [divide], or [subtract]?"
response = gets.chomp

case response.downcase
when 'add'
  puts "Which numbers would you like to add?"
  operator = :+

when 'subtract'
  puts "Which numbers would you like to subtract?"
  operator = :-

when 'multiply'
  puts "Which numbers would you like to multiply?"
  operator = :*

when 'divide'
  puts "Which numbers would you like to divide?"
  operator = :/
end

answer = get_int_values.inject(operator)
puts "The answer is... #{ answer }"

