# frozen_string_literal: true

class Api::V1::QuestionsController < Api::V1::BaseController
  def index
    @questions = Question.all
    respond_with @questions, root: :questions, adapter: :json
  end
end
