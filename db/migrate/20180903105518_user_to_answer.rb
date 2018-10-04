# frozen_string_literal: true

class UserToAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :user_id, :integer, index: true
  end
end
