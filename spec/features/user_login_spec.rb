require 'rails_helper'

RSpec.feature 'User log in', type: :feature do
  scenario 'User logs in and is redirected to their profile page' do
    sign_up('test@test.com', 'test_password', 'test user')
    visit posts_path
    click_link('Log out')
    click_link('Log in')
    fill_in('Email',    with: 'test@test.com')
    fill_in('Password', with: 'test_password')
    click_button('Submit')
    expect(page).to have_content("test user's profile")
  end
end
