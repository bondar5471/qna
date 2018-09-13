# frozen_string_literal: true

class QuestionsController < ApplicationController
  before_action :load_question, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  after_action :publish_question, only: %i[create]

  respond_to :html

  authorize_resource

  def index
    respond_with(@questions = Question.all)
  end

  def show
    @answer = @question.answers.build
    @comment = @question.comments.build
    respond_with(@question)
  end

  def new
    @question = Question.new
    @question.attachments.build
    respond_with(@question)
  end

  def edit; end

  def create
    respond_with(@question = current_user.questions.create(questions_params)) do
      flash[:notice] = 'Your question successfully created.'
    end
  end

  def update
    @question.update(questions_params) if current_user.author_of?(@question)
    respond_with(@question)
  end

  def destroy
    respond_with(@question.destroy)
  end
  
  private

  def load_question
  @question = Question.includes(:user).find(params[:id])
  end
  
  def publish_question
    return if @question.errors.any?
    ActionCable.server.broadcast('questions', @question.attributes.merge(email: @question.user.email))
  end

  def questions_params
    params.require(:question).permit(:title, :body, attachments_attributes: %i[id file _destroy])
  end
end
