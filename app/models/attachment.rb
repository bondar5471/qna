# frozen_string_literal: true

class Attachment < ApplicationRecord
  belongs_to :question, polymorphic: true, optional: true
  belongs_to :attachable, polymorphic: true, optional: true
  mount_uploader :file, FileUploader

  def destroy_if_owner(current_user)
    return destroy if current_user.id == attachable.user_id

    errors.add(:file, 'access denied')
    self
  end

  def self.files?
    all.map { |a| a[:file] }.any?
  end
end
