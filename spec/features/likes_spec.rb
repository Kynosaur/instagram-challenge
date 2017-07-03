require 'rails_helper'

RSpec.feature 'Likes', type: :feature do
  scenario 'Users can like a post' do
    sign_up('test@test.com', 'password', 'test user')
    create_new_post('Hello test!')
    click_button('Like')
    expect(page).to have_content('Likes: 1')
  end
end
