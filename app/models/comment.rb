# frozen_string_literal: true
require 'elasticsearch/model'

class Comment < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  belongs_to :commentable, polymorphic: true

  validates :body, presence: true
end
