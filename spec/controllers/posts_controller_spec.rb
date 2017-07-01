require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'should get index' do
    get posts_url
    assert_response :success
  end

  it 'should create a new post' do
    post posts_url, params: { post: { caption: "Hello test!" } }
    assert redirected_to posts_path
  end
end
