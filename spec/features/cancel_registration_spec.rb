require 'spec_helper'

describe "Cancel Registration", js: true do
  let!(:user) { User.create(email: email, password: password, password_confirmation: password) }
  let(:email) { 'jill@example.com' }
  let(:password) { 'password' }

  before do
    # Sign in
    visit root_path
    within('.navbar') { click_link('Sign in') }
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'

    # Cancel registration
    within('.navbar') { click_link('Profile') }
    click_link 'Cancel my account'
    page.driver.browser.switch_to.alert.accept
  end

  it "displays a goodbye message" do
    expect(page).to have_content("Bye! Your account was successfully cancelled. We hope to see you again soon.")
  end

  it "does not allow the user to sign in again" do
    # Try to sign in again
    within('.navbar') { click_link('Sign in') }
    fill_in 'Email', with: email
    fill_in 'Password', with: password
    click_button 'Sign in'

    expect(page).to have_content("Invalid email or password")
  end
end
