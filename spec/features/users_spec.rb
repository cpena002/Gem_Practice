require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context 'I am redirected to the log in page if i\'m not signed in/signed up' do
    Steps 'to visit landing page' do
      Given 'That I am on the landing page' do
        visit '/'
      end
      Then 'I should be redirected to the login page' do
        expect(current_path).to eq '/users/sign_in'
      end
    end
  end
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
      Then 'I can sign out' do
        click_on 'Sign out'
        expect(current_path).to eq '/users/sign_in'
        expect(page).to have_content "You need to sign in or sign up before continuing."
      end
    end
  end
end
