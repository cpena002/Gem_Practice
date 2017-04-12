require 'rails_helper'

RSpec.feature "CoolFeatures", type: :feature do
  context 'I am on the landing pange' do
    Steps 'Being welcomed' do
      Given 'I am on the landing page' do
        visit '/'
        expect(page).to have_content "Welcome"
      end
      Then 'I can see a list of apartments' do
        expect(page).to have_content "Street1"
        expect(page).to have_content "Street2"
        expect(page).to have_content "City"
        expect(page).to have_content "Zip code"
        expect(page).to have_content "State"
        expect(page).to have_content "Country"
        expect(page).to have_content "Name"
        expect(page).to have_content "Phone"
        expect(page).to have_content "Hours"
      end
    end
  end
  context 'I am on new apartment page' do
    Steps 'to create a new apartment' do
      Given 'I am on the new apartment page' do
        visit '/'
        click_on "New Apartment"
        expect(page).to have_content "New Apartment"
      end
      Then 'I can create a new apartment' do
        fill_in "Street1", with: "123 fake"
        fill_in "Street2", with: "Apt. 12"
        fill_in "City", with: "San Diego"
        fill_in "Zip code", with: "92020"
        fill_in "State", with: "CA"
        fill_in "Country", with: "USA"
        fill_in "Name", with: "Fake"
        fill_in "Phone", with: "619-734-6166"
        fill_in "Hours", with: "8 to 5"
      end
    end
  end
end
