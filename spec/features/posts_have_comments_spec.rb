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
end
