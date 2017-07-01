require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'User can make a new post' do
    visit posts_path
    click_link('New post')
    fill_in('Caption', with: 'Hello, test!')
    click_button('Submit')
    expect(page).to have_content('Hello, test!')
  end
end
