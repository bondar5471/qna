class QuestionsChannel < ApplicationCable::Channel
  def follow(data)
    sream_from "questions"
  end
end