# frozen_string_literal: true

class QuestionsChannel < ApplicationCable::Channel
  def follow(_data)
    stream_from 'questions'
  end
end
