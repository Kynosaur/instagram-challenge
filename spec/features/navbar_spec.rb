require 'rails_helper'

RSpec.feature 'Navbar', type: :feature do
  scenario 'Navbar exists' do
    visit posts_path
    expect(page).to have_link('Log in')
    expect(page).to have_link('Sign up')
    visit new_user_path
    expect(page).to have_link('Log in')
    expect(page).to have_link('Sign up')
  end

  scenario 'Navbar greets the current user' do
    sign_up('test@test.com', 'password', 'test user')
    expect(page).to have_content('Hello, test user!')
    visit posts_path
    expect(page).to have_content('Hello, test user!')
    click_link('Log out')
    expect(page).not_to have_content('Hello, test user!')
  end
end
