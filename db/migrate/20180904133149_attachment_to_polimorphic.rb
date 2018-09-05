# frozen_string_literal: true

class AttachmentToPolimorphic < ActiveRecord::Migration[5.2]
  def change
    rename_column :attachments, :question_id, :attachable_id
    add_column :attachments, :attachable_type, :string
    add_index :attachments, %i[attachable_id attachable_type]
  end
end
