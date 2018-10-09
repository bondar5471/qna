# frozen_string_literal: true

class Article < ActiveRecord::Base
  belongs_to :user
  has_many :taggings
  has_many :tags, :through => :taggings
end
