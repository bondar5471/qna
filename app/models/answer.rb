# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question, optional: true
  belongs_to :user, optional: true
  has_many :attachments, as: :attachable, dependent: :destroy
  has_many :comments, as: :commentable

  validates :body, presence: true

  accepts_nested_attributes_for :attachments

  scope :best_answers,     -> { where(best: true) }
  scope :not_best_answers, -> { where(best: false) }

  after_create :calculate_rating

  def make_best!
    ActiveRecord::Base.transaction do
      unless best?
        question.answers.update_all(best: false)
        update!(best: true)
      end
    end
  end

  private

  def calculate_rating
    Reputation.delay.calculate(self)
  end
end
