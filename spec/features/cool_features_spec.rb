require 'rails_helper'

RSpec.feature "CoolFeatures", type: :feature do
  # creating user to be able to create apartments
  context 'I can sign up' do
    Steps 'to sign up' do
      Given 'That I am on the login page' do
        visit '/'
        click_on "Sign up"
        expect(page).to have_content "Sign up"
      end
      Then 'I can sign up successfully' do
        fill_in "Email", with: "fake@fake.com"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_on "Sign up"
        expect(current_path).to eq '/'
        expect(page).to have_content "Welcome!"
      end
      # To create an apartment I need Landlord access
      Then 'I can create a new apartment entry' do
        click_on "New Apartment"
        expect(current_path).to eq "/apartments/new"
        fill_in "Street1", with: "123 fake"
        fill_in "Street2", with: "Apt. 12"
        fill_in "City", with: "San Diego"
        fill_in "Zip code", with: "92020"
        fill_in "State", with: "CA"
        fill_in "Country", with: "USA"
        fill_in "Name", with: "Fake"
        fill_in "Phone", with: "619-734-6166"
        fill_in "Hours", with: "8 to 5"
        click_on "Create Apartment"
      end
    end
  end

end
