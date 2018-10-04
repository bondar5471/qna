# frozen_string_literal: true

require 'elasticsearch/model'

class Answer < ApplicationRecord
  belongs_to :question, optional: true
  belongs_to :user, optional: true
  has_many :attachments, as: :attachable, dependent: :destroy
  has_many :comments, as: :commentable

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :body, type: :text, analyzer: :english
    end
  end

  validates :body, presence: true

  accepts_nested_attributes_for :attachments

  scope :best_answers,     -> { where(best: true) }
  scope :not_best_answers, -> { where(best: false) }

  after_create :update_reputation

  def make_best!
    ActiveRecord::Base.transaction do
      unless best?
        question.answers.update_all(best: false)
        update!(best: true)
      end
    end
  end

  private

  def update_reputation
    CalculateReputationJob.perform_later(self)
  end
end
