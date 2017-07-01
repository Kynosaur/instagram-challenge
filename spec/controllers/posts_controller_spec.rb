require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'should get index' do
    get :index
    assert_response :success
  end

  it 'should create a new post' do
    post :create, params: { post: { caption: "Hello test!" } }
    assert redirect_to posts_path
  end
end
