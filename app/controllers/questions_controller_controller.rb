class QuestionsControllerController < ApplicationController
  def answer
    question = params[:question]
    if question != "Going to work now!"
      if question.include? "?"
        if question == "what time is it?"
          @answer = "It is #{Time.now}"
        else
          @answer = "Another silly question!"
        end
      else
        @answer = "Whatever, I don't really care..."
      end
    else
      @answer = "Yeah, about time!"
    end
  end

  def ask
  end
end


