require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'User can make a new post with an image' do
    visit posts_path
    click_link('New post')
    fill_in('Caption', with: 'Hello, test!')
    attach_file("post_picture", Rails.root + "test_image.png")
    click_button('Submit')
    expect(page).to have_content('Hello, test!')
    expect(page).to have_xpath("//img[contains(@src,'test_image.png')]")
  end
end
