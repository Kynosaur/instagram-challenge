def create_new_post(text)
  visit posts_path
  click_link 'New post'
  fill_in('Caption', with: text)
  attach_file("post_picture", Rails.root + "test_image.png")
  click_button('Submit')
end
