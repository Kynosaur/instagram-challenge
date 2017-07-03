require 'rails_helper'

RSpec.feature 'Likes', type: :feature do
  scenario 'Users can like a post' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    click_button('Like')
    expect(page).to have_content('Likes: 1')
  end

  scenario 'Like button only appears if user is logged in' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    expect(page).to have_button('Like')
    click_link('Log out')
    expect(page).not_to have_button('Like')
  end

  scenario 'Users can only like each post once' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    click_button('Like')
    expect(page).not_to have_button('Like')
  end
end
