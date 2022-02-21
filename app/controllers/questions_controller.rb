class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:question]
    @coach_answer = if @answer == 'I am going to work'
                      'Great!'
                    elsif @answer.ends_with? "?"
                      'Silly question, get dressed and go to work!'
                    else
                      'I dont care, get dressed and go to work!'
                    end
  end

end
