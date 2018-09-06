# frozen_string_literal: true

class Attachment < ApplicationRecord
  belongs_to :question, polymorphic: true
  belongs_to :attachable, polymorphic: true, optional: true
  validates :file, presence: true
  mount_uploader :file, FileUploader
end
