@useranswers = [1,2,3,4,5]
@copyuseranswers = @useranswers

def gather_answers_from_user
   puts "What is an answer"
   @user_answers_for_array = gets.chomp
   @useranswers << @user_answers_for_array
   display_answers_from_user
 end

 def display_answers_from_user
   puts "here are your answers:"
   puts @copyuseranswers
   gather_answers_from_user
 end

 def erase_answers_from_user
   puts "i am erasing your answers"
   @copyuseranswers.clear
   puts "and I am showing your my answers"
   puts @useranswers
   gather_answers_from_user
 end
gather_answers_from_user
