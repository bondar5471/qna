ThinkingSphinx::Index.define :question, with: :active_record do
  #filed
  indexes title, sortable: true 
  index body
  index user.email, as: :author, sortable: true 

  #atributes
  has user_id, created_at, updated_at
end
