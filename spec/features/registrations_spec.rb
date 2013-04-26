require 'spec_helper'

describe "User Registration" do
  before do
    visit root_path
    within('.navbar') { click_link('Sign up') }
  end

  context "failure" do
    before do
      fill_in 'Email', with: ''
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button 'Sign up'
    end

    it "displays an error message" do
      expect(page).to have_content("Please review the problems below")
    end

    it "shows the correct navigation links" do
      within('.navbar') do
        expect(page).to have_link('Sign in')
        expect(page).to have_link('Sign up')
        expect(page).to_not have_link('Profile')
        expect(page).to_not have_link('Sign out')
      end
    end
  end

  context "success" do
    before do
      fill_in 'Email', with: 'jill@example.com'
      fill_in 'user[password]', with: 'password'
      fill_in 'user[password_confirmation]', with: 'password'
      click_button 'Sign up'
    end

    it "displays a welcome message" do
      expect(page).to have_content("Welcome! You have signed up successfully.")
    end

    it "shows the correct navigation links" do
      within('.navbar') do
        expect(page).to have_link('Profile')
        expect(page).to have_link('Sign out')
        expect(page).to_not have_link('Sign in')
        expect(page).to_not have_link('Sign up')
      end
    end
  end
end
