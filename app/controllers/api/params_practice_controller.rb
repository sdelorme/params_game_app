class Api::ParamsPracticeController < ApplicationController
  def letter
    @name = params[:name]
    render 'letter.json.jb'
  end

  def number
    @number = 7
    render 'number.json.jb'
  end
end
