require 'rails_helper'

RSpec.feature 'Comments', type: :feature do
  scenario 'Posts can be commented on' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    click_link('Comments')
    fill_in('comment_body', with: 'Hello post!')
    click_button('Submit')
    expect(page).to have_content('Hello post!')
  end

  scenario 'Users can only comment on a post while signed in' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    click_link('Log out')
    visit posts_path
    click_link('Comments')
    expect(page).not_to have_field('comment_body')
    expect(page).to have_content('Sign up or log in to add a comment')
  end
end
