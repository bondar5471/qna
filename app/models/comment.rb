# frozen_string_literal: true

require 'elasticsearch/model'

class Comment < ApplicationRecord
  belongs_to :user, optional: true
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings do
    mappings dynamic: false do
      indexes :body, type: :text, analyzer: :english
    end
  end
  belongs_to :commentable, polymorphic: true, touch: true

  validates :body, presence: true
end
