require 'spec_helper'

describe "Flash Notices", js: true do
  before do
    # When an unauthenticated user visits
    # the edit_user_registration_path they
    # are redirected with a flash notice
    visit edit_user_registration_path
  end

  it "can be dismissed by the user" do
    # check that the flash message exists
    # click to close the flash message
    # check that the flash message is gone
    pending
  end
end
