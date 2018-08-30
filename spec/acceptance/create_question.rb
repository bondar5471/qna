require_relative 'acceptance_helper'

feature 'Create question', %q{
   in order to get answer from community
   as an aurhenticated user
   i want  to be able to ask question
} do

  given(:user) { create(:user) }

  scenario 'Authenticated user creates question' do
    
    visit new_user_session_path  
   sign_in(user)

    visit questions_path
    click_on 'Ask question'
    fill_in 'Title', with: 'Test question'
    fill_in 'Body', with: 'Text'

    click_on 'Create'

    expect(page).to have_content 'Your question successfully created.' 
  end

  scenario 'No-authenticated user ties to create question' do
    visit questions_path
    click_on 'Ask question'

    expect(page).to  have_content 'You need to sign in or sign up before continuing.' 
  end

end