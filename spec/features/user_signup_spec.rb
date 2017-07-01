require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  scenario 'User signs up and is redirected to their profile page' do
    visit posts_path
    click_link('Sign up')
    fill_in('Username', with: 'test user')
    fill_in('Password', with: 'test_password')
    fill_in('email',    with: 'test@test.com')
    click_button('Submit')
    expect(page).to have_content("test user's profile")
  end
end
