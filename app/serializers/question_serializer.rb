# frozen_string_literal: true

class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :created_at, :updated_at, :short_title

  has_many :answers

  def short_title
    object.title.truncate(10)
  end

  # def created_date
  #   object.created_at.to_date
  # end

  # def updated_date
  #   object.updated_at.to_date
  # end
end
