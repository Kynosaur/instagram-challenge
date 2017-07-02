require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  scenario 'User signs up and is redirected to their profile page' do
    visit posts_path
    click_link('Sign up')
    fill_in('Username', with: 'test user')
    fill_in('Password', with: 'test_password')
    fill_in('Email',    with: 'test@test.com')
    click_button('Submit')
    expect(page).to have_content("test user's profile")
  end

  scenario 'User attempts to sign up with something which is not an email address' do
    sign_up('not_an_email', 'password', 'name')
    expect(current_path).to eq('/users/new')
    user = User.find_by(email: 'not_an_email')
    expect(user).not_to be
    expect(page).to have_content("Sorry, that doesn't look like an email address... please try again.")
  end
end
