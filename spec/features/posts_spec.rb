require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'User can make a new post with an image' do
    sign_up('test@test.com', 'password', 'name')
    create_new_post('Hello, test!')
    expect(page).to have_content('Hello, test!')
    expect(page).to have_xpath("//img[contains(@src,'test_image.png')]")
  end

  scenario 'Posts are displayed in reverse chronological order' do
    sign_up('test@test.com', 'password', 'name')
    create_new_post('Test one')
    create_new_post('Test two')
    create_new_post('Test three')
    expect('two').to appear_before('one')
    expect('three').to appear_before('two')
  end

  scenario 'Posts show the username of their poster in the view' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    expect(page).to have_content('Posted by test user')
  end

  scenario 'User tries to make a post without being signed in and sees an error message' do
    visit posts_path
    expect(page).not_to have_link('New post')
    visit new_post_path
    expect(page).not_to have_field('comment_body')
    expect(page).to have_content('Please sign up or log in to post')
  end
end
