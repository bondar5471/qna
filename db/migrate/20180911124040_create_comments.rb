# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
    add_index :comments, %i[commentable_id commentable_type]
  end
end
