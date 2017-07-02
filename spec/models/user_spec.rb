require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to be }

  it 'Can create a new user' do
    user = User.create(name: 'Test_user', password: 'test_password', email: 'test@test.com')
    expect(user).to be_valid
  end

  it 'Will not create a new user with no name' do
    user = User.create(name: '', password: 'test_password', email: 'test@test.com')
    expect(user).not_to be_valid
  end

  it 'Will not create a new user with no email' do
    user = User.create(name: 'test_user', password: 'test_password', email: '')
    expect(user).not_to be_valid
  end

  it 'Will not create a new user with no password' do
    user = User.create(name: 'test_user', password: '', email: 'test@test.com')
    expect(user).not_to be_valid
  end

  it 'Will not create a new user with an invalid email address' do
    user = User.create(name: 'test_user', password: 'test_password', email: 'not_an_email')
    expect(user).not_to be_valid
  end
end
