class Api::ParamsPracticeController < ApplicationController
  def practice
    @name = params[:name]
    render 'practice.json.jb'
  end
end
