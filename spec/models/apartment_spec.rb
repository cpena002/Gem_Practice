require 'rails_helper'

RSpec.describe Apartment, type: :model do
  it 'should have street1, street2, city, zip code, state, country, name, phone number, hours to contact, and user id' do
    user1 = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
    expect(user1.save).to be true

    apt = Apartment.new(street1: "123 fake", street2: "Apt. 12", city: "san diego", zip_code: 92020, state: "CA", country: "USA", name: "fake", phone: 6197346166, hours: "8:00 am to 5:00pm", user_id: user1.id)
    expect(apt.save).to be true
  end
  it 'got saved and can be retreived from db' do
    user1 = User.new(email: "fake@fake.com", password: "password", password_confirmation: "password")
    user1.save

    apt = Apartment.new(street1: "123 fake", street2: "Apt. 12", city: "san diego", zip_code: 92020, state: "CA", country: "USA", name: "fake", phone: 6197346166, hours: "8:00 am to 5:00pm", user_id: user1.id)
    apt.save

    apt2 = Apartment.find_by_street1("123 fake")
    expect(apt2.phone).to eq "6197346166"
  end
end
