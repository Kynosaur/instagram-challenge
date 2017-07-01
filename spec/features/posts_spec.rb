require 'rails_helper'

RSpec.feature 'Posts', type: :feature do
  scenario 'User can make a new post with an image' do
    create_new_post('Hello, test!')
    expect(page).to have_content('Hello, test!')
    expect(page).to have_xpath("//img[contains(@src,'test_image.png')]")
  end

  scenario 'Posts are displayed in reverse chronological order' do
    create_new_post('Test one')
    create_new_post('Test two')
    create_new_post('Test three')
    expect('two').to appear_before('one')
    expect('three').to appear_before('two')
  end
end
