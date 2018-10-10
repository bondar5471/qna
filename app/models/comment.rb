# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user, optional: true

  belongs_to :commentable, polymorphic: true, touch: true

  validates :body, presence: true
end
