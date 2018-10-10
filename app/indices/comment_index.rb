# frozen_string_literal: true

ThinkingSphinx::Index.define :comment, with: :active_record do
  # filled
  indexes body
  indexes user.email, as: :author, sortable: true

  # attributes
  has user_id, created_at
end
