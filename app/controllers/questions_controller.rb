class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @question = params[:question]
      @answer = coach_answer(@question)
    end
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      message = "Great!"
    elsif your_message.include?("?")
      message = "Silly question, get dressed and go to work!"
    else
      message = "I don't care, get dressed and go to work!"
    end
    return message
  end
end
