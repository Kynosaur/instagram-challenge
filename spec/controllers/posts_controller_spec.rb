require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  it 'should get index' do
    get :index
    assert_response :success
  end
end
