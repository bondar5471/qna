# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :attachments, as: :attachable, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :user, optional: true
  has_many :comments, as: :commentable

  validates :title, :body, presence: true

  accepts_nested_attributes_for :attachments

  def best_answer
    answers.best_answers.first
  end
end
