# frozen_string_literal: true
require 'elasticsearch/model'

class Question < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :title, type: :text, analyzer: :english
      indexes :body, type: :text, analyzer: :english
    end
  end

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
