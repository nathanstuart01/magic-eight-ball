# try to add in a loop while to this to cut down on methods

@answers = [
'yes',
'make america great again',
'no',
'maybe',
]

def first_question
  puts "Hello, what is a question you have or type quit to exit program?"
  @user_input = gets.chomp
    if @user_input == 'quit'
      puts "goodbye"
      exit(0)
    else
      puts "My answer is: #{@answers.sample}"
      second_question
    end
end

def second_question
  puts "now what do you want to know?"
  @user_input2 = gets.chomp
  puts "My answer is: #{@answers.sample}"
  puts "What else do you want to know or type quit to exit the program"
  @user_input3 = gets.chomp
    if @user_input3 == 'quit'
      puts "goodbye"
      exit(0)
    else
      puts "My answer is: #{@answers.sample}"
      add_answers
    end
end

def add_answers
   puts "    "
   puts "Want to add some answers into my bank of knowledge?"
   puts "    "
   puts "Type your answer here and I may use it later or type no and you can ask me another question"
   @user_input4 = gets.chomp
      if @user_input4 == 'no'
      second_question
      end
        if (@answers.include?(@user_input4))
          puts "I already have that answer, give me a new one"
          add_answersagain
        else
          @answers << @user_input4
          second_question
        end
end


def add_answersagain
  puts "Type an answer I do not already have and I may use it later"
  @user_input5 = gets.chomp
    if (@answers.include?(@user_input5))
      puts "I already have that answer, try again later"
      second_question
    else
      @answers << @user_input5
      second_question
    end
end

first_question
