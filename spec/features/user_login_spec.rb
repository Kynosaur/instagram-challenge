require 'rails_helper'

RSpec.feature 'User log in', type: :feature do
  scenario 'User logs in and is redirected to their profile page' do
    sign_up('test@test.com', 'test_password', 'test user')
    visit posts_path
    click_link('Log out')
    log_in('test@test.com', 'test_password')
    expect(page).to have_content("test user's profile")
  end

  it "Shows a login error for incorrect input for the appropriate time" do
    sign_up('test@test.com', 'test_password', 'test user')
    click_link('Log out')
    log_in('test@test.com', 'wrong_password')
    expect(page).to have_content('Incorrect email or password')
    visit posts_path
    expect(page).not_to have_content('Incorrect email or password')
  end
end
