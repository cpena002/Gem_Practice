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
        click
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
end
