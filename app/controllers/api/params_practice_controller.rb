class Api::ParamsPracticeController < ApplicationController
  
  def name
    @scream = params[:name].upcase
    render 'name.json.jb'
  end
  
  
  def letter
    @name = params[:name]
    if @name[0] == "a" 
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "Hey, your name doesn't start with the first letter of the alphabet!"
    end
    render 'letter.json.jb'
  end

  def number
    @guess = params[:number].to_i
    @number = 7
    if @guess == @number
      @message = "Holy ish! You guessed it correctly!"
    elsif @guess < 7
      @message = "higher!"
    elsif @guess > 7
      @message = "lower!"
    else
      @message = "pick a number you weirdo!" 
    end
    render 'number.json.jb'
  end

end
