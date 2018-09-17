# frozen_string_literal: true

class AnswersController < ApplicationController
  before_action :authenticate_user!, only: %i[new create destroy update]
  before_action :find_question
  before_action :find_answer, only: %i[update make_best destroy]

  respond_to :js

  authorize_resource

  def create
    @answer = @question.answers.create(answer_params.merge(user: current_user))
    flash[:notice] = 'Your answer successfully created.'
  end

  def update
    @answer.update(answer_params) if current_user.author_of?(@answer)
    respond_with @answer
  end

  def make_best
    @answer.make_best! if current_user.author_of?(@question)
    respond_with @answer
  end

  def destroy
    @answer.destroy if current_user.author_of?(@answer)
    respond_with @answer
  end

  private

  def find_question
    @question = Question.find(params[:question_id])
  end

  def find_answer
    @answer = @question.answers.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body, attachments_attributes: [:file])
  end
end
