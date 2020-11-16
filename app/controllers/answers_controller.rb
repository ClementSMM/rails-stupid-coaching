class AnswersController < ApplicationController
  def answer
    if params[:question][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work right now!'
      @answer = ''
    elsif params[:question].is_a? String
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
