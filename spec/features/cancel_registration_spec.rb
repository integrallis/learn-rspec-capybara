require 'spec_helper'

describe "Cancel Registration", js: true do
  let!(:user) { User.create(email: email, password: password, password_confirmation: password) }
  let(:email) { 'jill@example.com' }
  let(:password) { 'password' }

  before do
    # Sign in

    # Cancel registration
    # HINT: page.driver.browser.switch_to.alert.accept
  end

  it "displays a goodbye message" do
    pending
  end

  it "does not allow the user to sign in again" do
    # Try to sign in again
    pending
  end
end
