# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :attachments, as: :attachable, dependent: :destroy

  validates :body, presence: true

  accepts_nested_attributes_for :attachments

  scope :best_answers,     -> { where(best: true) }
  scope :not_best_answers, -> { where(best: false) }

  def make_best!
    ActiveRecord::Base.transaction do
      unless best?
        question.answers.update_all(best: false)
        update!(best: true)
      end
    end
  end
end