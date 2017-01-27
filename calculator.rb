



# I need to get the left hand for the equation
# I need to get the operator +,-,*,/ for the equation
# I need to get the right hand for the equation
# I need to calculate and show the result

puts "Welcome to the Ruby Calculator"


def left_hand
  puts "What is the first number?"
  @num_1 = gets.chomp
  if @num_1 != '0' && @num_1.to_i == 0
    puts 'Put numbers only!'
    left_hand
  else
  @num_1 = @num_1.to_i
  operator_calculation
  end
end


def operator_calculation
    puts "What is the Operator"
    @operator_input = gets.chomp
    right_hand
  end


def right_hand
    puts "What is the second number?"
    @num_2 = gets.chomp
    if @num_2 != '0' && @num_2.to_i == 0
     puts 'Put numbers only!'
     right_hand
   else
     @num_2 = @num_2.to_i
     calculate_program
   end
end

def calculate_program
    puts "Calculation...."
    case @operator_input
    when '+'
      @result = @num_1 + @num_2
    when '-'
      @result = @num_1 - @num_2
    when '*'
      @result = @num_1 * @num_2
    when '%'
      @result = @num_1 % @num_2
    else
      "error"
    end
    puts @result
 end

left_hand
