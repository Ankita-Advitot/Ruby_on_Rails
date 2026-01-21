require 'rails_helper'

RSpec.describe Blog, type: :model do
  it "is valid with valid attributes" do
    blog = build(:blog)
    expect(blog).to be_valid
  end

  it "is invalid without title" do
    blog = build(:blog, title: nil)
    expect(blog).not_to be_valid
  end
end
