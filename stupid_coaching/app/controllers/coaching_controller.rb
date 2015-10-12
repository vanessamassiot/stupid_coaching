class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  def coach_answer(your_message)
    if your_message.count("?") >= 1
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      return ""
    elsif your_message == your_message.upcase
      return "I can feel your motivation! #{coach_answer(your_message)}"
    else
      return coach_answer(your_message)
    end
  end
end
