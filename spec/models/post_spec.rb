require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }
  it { is_expected.to have_many :comments }

  it 'Will not create a new post without an image' do
    post = Post.create(caption: "Hello test!")
    expect(post).not_to be_valid
  end
end
