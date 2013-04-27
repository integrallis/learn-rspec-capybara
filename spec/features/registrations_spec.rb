require 'spec_helper'

describe "User Registration" do
  before do
    visit root_path
    within('.navbar') { click_link('Sign up') }
  end

  context "failure" do
    before do
      # try to sign up without an email
    end

    it "displays an error message" do
      pending
    end

    it "shows the correct navigation links" do
      # should still see 'Sign in' and 'Sign up'
      # should not see 'Profile' or 'Sign out'
      pending
    end
  end

  context "success" do
    before do
      # sign up successfully
    end

    it "displays a welcome message" do
      pending
    end

    it "shows the correct navigation links" do
      # should not see 'Sign in' and 'Sign up'
      # should see 'Profile' or 'Sign out'
      pending
    end
  end
end
