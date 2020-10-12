class QuestionsController < ApplicationController
  def ask
    @search = params[:question]
  end

  def answer
    @search = params[:question]
    if @search.present?
      if @search.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      elsif @search == "I am going to work"
        @answer = 'Great!'
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end
end
