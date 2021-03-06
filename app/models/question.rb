# frozen_string_literal: true

class Question < ApplicationRecord
  has_many :attachments, as: :attachable, dependent: :destroy
  has_many :answers, dependent: :destroy
  belongs_to :user, optional: true
  has_many :comments, as: :commentable
  has_many :subscribers, through: :subscriptions, source: :user
  has_many :subscriptions, dependent: :destroy

  validates :title, :body, presence: true

  accepts_nested_attributes_for :attachments

  after_create :update_reputation

  def best_answer
    answers.best_answers.first
  end

  private

  def update_reputation
    CalculateReputationJob.perform_later(self)
  end
end
