# frozen_string_literal: true

require_relative 'acceptance_helper'

feature 'User sign in', '
   in order to be able to ask question
   as an user
   i want to de able to sing in
' do

  given(:user) { create(:user) }

  scenario 'Registered user try to sign in' do
    sign_in(user)

    expect(page).to have_content 'Signed in successfully.'
    expect(current_path).to eq root_path
  end

  scenario 'No-registred user try to sing in' do
    visit new_user_session_path # '/sing_in'
    fill_in 'Email', with: 'user2@test.com'
    fill_in 'Password', with: '12345678'
    click_on 'Log in'

    expect(page).to have_content 'Invalid Email or password.'
    expect(current_path).to eq new_user_session_path
  end
end
