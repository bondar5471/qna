# frozen_string_literal: true

class AttachmentsController < ApplicationController
  before_action :set_attachment

  respond_to :js

  def destroy
    @attachable = @attachment.attachable
    if current_user.author_of?(@attachable)
      @attachment.destroy
      flash[:notice] = 'File delete!.'
    end
  end

  private

  def set_attachment
    @attachment = Attachment.find(params[:id])
  end

  def interpolation_options
    { resource_name: 'Your file' }
  end
end
