require 'rails_helper'

RSpec.feature "Users", type: :feature do
  # commented out code from users.rb, apartments_controller.rb to successfully complete this story
  context 'unauthenticated users only see apartment listings'  do
    Steps 'to visit landing page' do
      Given 'That I am on the landing page' do
        visit '/'
        expect(page).to have_content "Listings"
        expect(page).to have_content "Street1"
        expect(page).to have_content "Street2"
        expect(page).not_to have_link("New Apartment")
        expect(page).not_to have_link("Sign Out")
        expect(page).to have_link ("Log In")
        expect(page).to have_link ("Sign Up")
      end
      Then 'I should only be able to visit the index page' do
        visit '/apartments/new'
        expect(page).not_to have_current_path(new_apartment_path)
      end
    end
  end

  # context 'I can sign up wiht a visitor role' do
  #   Steps 'to sign up' do
  #     Given 'That I am on the login page' do
  #       visit '/'
  #       click_on "Sign up"
  #       expect(page).to have_content "Sign up"
  #     end
  #     Then 'I can sign up successfully' do
  #       fill_in "Email", with: "fake@fake.com"
  #       fill_in "Password", with: "password"
  #       fill_in "Password confirmation", with: "password"
  #       click_on "Sign up"
  #       expect(current_path).to eq '/'
  #       expect(page).to have_content "Welcome!"
  #     end
  #     Then 'I can sign out' do
  #       click_on 'Sign out'
  #       expect(current_path).to eq '/users/sign_in'
  #       expect(page).to have_content "You need to sign in or sign up before continuing."
  #     end
  #   end
  # end
end
