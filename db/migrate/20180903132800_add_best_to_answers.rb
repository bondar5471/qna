# frozen_string_literal: true

class AddBestToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :best, :boolean, default: false
  end
end
