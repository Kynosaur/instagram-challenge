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
end
