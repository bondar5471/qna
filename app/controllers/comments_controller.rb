# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :authenticate_user!
  respond_to :js

  authorize_resource

  def create
    @question = Question.find(params[:question_id])
    respond_with(@comment = @question.comments.create(comment_params))
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
