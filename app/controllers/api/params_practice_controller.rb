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
    number = 7
    if @guess < number
      @message = "higher!"
    elsif @guess > number
      @message = "lower!"
    else
      @message = "Holy ish! You guessed it correctly!"
    end
    render 'number.json.jb'
  end

  def credentials
    username = params[:username].downcase
    password = params[:password].downcase
    if username == "hugh" && password == "swordfish"
      @message = "Valid credentials mate!"
    else 
      @message = "invalid credentials mate!"
    end
  end

end
