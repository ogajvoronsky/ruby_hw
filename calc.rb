<<<<<<< HEAD
class Calculator

  attr_reader :result
  attr_reader :bmi

  def initialize
    @operand1 = @operand2 = 0.0
    @weight = @height = 0
    @result = 0.0
    @bmi = 0.0
  end

  def calculate
    puts 'Enter operation (+ - * / or b for BMI)'
    case gets.chomp
      when '+' then plus
      when '-' then minus
      when '*' then multiply
      when '/' then division
      when 'b' then bmi
    end
  end

  def plus()
      ask_operands
      @result =@operand1+@operand2
      puts "Result: #{ @result.to_s }"
  end

  def minus()
    ask_operands
    @result = @operand1-@operand2
    puts "Result: #{ @result.to_s }"
  end

  def multiply()
    ask_operands
    @result = @operand1*@operand2
    puts "Result: #{ @result.to_s }"
  end

  def division()
    ask_operands
    if @operand2 == 0 then
      puts "Can't divide by zero!"
      return 0
    end
    @result = @operand1/@operand2
    puts "Result: #{ @result.to_s }"

  end

  def bmi()
    ask_bmi_operands
# BMI = weight in kg / height in meters ** 2
    @bmi = (@weight.to_f/((@height.to_f/100)**2)).round(2)
    puts "Your BMI is: #{ @bmi }"
    puts
    puts 'Do you want receive assumption about your weight? (Nothing for decline)'
    puts 'y - Yes'
    answer = gets.chomp
    if answer == 'y' || answer == 'Y'
      if @bmi < 18.5
        puts 'You are underweight.'
      end
      if @bmi.between?(18.5,24.9)
        puts 'Congratulations! You are healthy weight.'
      end
      if @bmi.between?(25.0,29.9)
        puts 'You are overweight!'
      end
      if @bmi > 30.0
        puts 'You are abese!'
      end
    end
  end



  private

  def ask_operands()
    puts 'Enter first operand:'
    @operand1 = gets.to_f
    puts 'Enter second operand:'
    @operand2 = gets.to_f
  end

  def ask_bmi_operands()
    until @weight.between?(2,150)
      puts 'Enter your weight (kg):'
      @weight = gets.to_i
      puts 'Weight that you provide is not adequate. Please try again.' if !(@weight.between?(2,150))
    end

    until @height.between?(30,300)
      puts 'Enter your height (cm):'
      @height = gets.to_i
      puts 'Height that you provide is not adequate. Please try again.' if !(@height.between?(30,300))
    end
  end

=======
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
   when "b" then result = (first_operand / (second_operand**2))		   

 else 
   puts "Unknown operation"
 end

  puts "Result: #{ result.round(2) }".green.on_white
>>>>>>> 9ff857017f61c2c01d70831b4407ab2cd44304fe
end

# Run calculator instance
calc = Calculator.new
calc.calculate










