require 'colorize'


while true do

 puts "Enter operation ( + - / b )"
 operation = gets.chomp 

 if operation != 'b' then
   puts "Enter first operand"
   first_operand = gets.to_f
   puts "Enter second operand"
   second_operand = gets.to_f
 elsif begin
   puts "Enter your weight (kg)"
   first_operand = gets.to_f
   puts "Enter your height (cm)"
   second_operand = gets.to_f
   end
 end

 case operation
   when "-" then result = first_operand - second_operand
   when "+" then result = first_operand + second_operand
   when "*" then result = first_operand * second_operand
   when "/" then     
     if second_operand != 0 then 
	     result = (first_operand / second_operand)
     else 
	puts "Cannot divide by zero!"
        next
     end 
   when "b" then  puts "bbb"
	result = (first_operand / (second_operand**2))		   

 else 
   puts "Unknown operation"
 end

  puts "Result: #{ result.round(2) }".green.on_white
end






