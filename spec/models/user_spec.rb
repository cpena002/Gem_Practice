require 'rails_helper'

RSpec.describe User, type: :model do
  it "should sign up" do
    user1 = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
    expect(user1.save).to be true
  end

  it 'should find the registered user' do
    user1 = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
    user1.save
    find_user1 = User.find_by_email("fake@fake.com")
    expect(find_user1.email).to eq "fake@fake.com"
  end
end
