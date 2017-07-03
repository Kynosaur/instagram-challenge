require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it { is_expected.to have_many :comments }
  it { is_expected.to have_many :likes }
  it { is_expected.to belong_to :user }

  it 'Will not create a new post without an image' do
    user = User.create(name: 'test', password: 'test', email: 'test@test.com')
    post = user.posts.create(caption: "Hello test!")
    expect(post).not_to be_valid
  end
end
