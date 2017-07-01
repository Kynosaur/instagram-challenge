require 'rails_helper'

RSpec.describe Post, type: :model do
  it { is_expected.to be }

  it 'Can create a new post' do
    post = Post.create(caption: "Hello test!")
    expect(post).to be_valid
  end
end
