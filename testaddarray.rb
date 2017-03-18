#array 3 = my_array will copy array, actualy saying here is another thing in memory that points to the original array
   #i would still keep my original answers in the first Array
   # need to make a clone array of user answers
   # need to keep original answers

   @useranswers = []
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
      puts "enter 1 if you want to add another answer or 2 if you want to erase your answers"
      @user_answers_for_array2 = gets.chomp
        if @user_answers_for_array2 == '1'
          gather_answers_from_user
        elsif
          @user_answers_for_array2 == '2'
          erase_answers_from_user
        end
    end

   def erase_answers_from_user
   puts "I am now erasing all your answers and using only mine"
   @useranswers.clear
   puts "Your answers are now erased"
   freshly_erased_array
  end

  def freshly_erased_array
    puts @useranswers
    gather_answers_from_user
  end
   #erase clone array

gather_answers_from_user
