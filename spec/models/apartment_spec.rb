require 'rails_helper'

RSpec.describe Apartment, type: :model do
  it 'should have street1, street2, city, zip code, state, country, name, phone number, and hours to contact' do
    apt = Apartment.new(street1: "123 fake", street2: "Apt. 12", city: "san diego", zip_code: 92020, state: "CA", country: "USA", name: "fake", phone: 6197346166, hours: "8:00 am to 5:00pm")
    expect(apt.save).to be true
  end
  it 'saved and can be retreived from db' do
    apt = Apartment.new(street1: "123 fake", street2: "Apt. 12", city: "san diego", zip_code: 92020, state: "CA", country: "USA", name: "fake", phone: 6197346166, hours: "8:00 am to 5:00pm")
    apt.save
    apt2 = Apartment.find_by_street1("123 fake")
    expect(apt2.phone).to eq "6197346166"
  end

end
