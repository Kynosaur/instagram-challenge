def create_new_post(text)
  visit posts_path
  click_link 'New post'
  fill_in('Caption', with: text)
  attach_file("post_picture", Rails.root + "test_image.png")
  click_button('Submit')
end

def sign_up(email, password, name)
  visit posts_path
  click_link('Sign up')
  fill_in('Email',    with: email)
  fill_in('Password', with: password)
  fill_in('Username', with: name)
  click_button('Submit')
end
