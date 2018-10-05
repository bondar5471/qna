# frozen_string_literal: true

class AddUserIdComment < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :comments, :user, index: true
  end
end
