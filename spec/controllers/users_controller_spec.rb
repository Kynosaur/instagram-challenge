require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it 'should create a new user' do
    post :create, params: { user: { name: 'test_user', password: 'test_password', email: 'test@test.com' } }
    assert redirect_to 'users/1'
  end
end
