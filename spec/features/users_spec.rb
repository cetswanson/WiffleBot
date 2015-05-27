require "rails_helper"

RSpec.feature "User signs up", :type => :feature do

  scenario "A user signs up incorrectly" do
    visit root_path
    click_on "signupButton"

    fill_in "signup_name", :with => "test"
    fill_in "signup_password", :with => "test"
    fill_in "signup_password_confirmation", :with => "not_test"

    expect{click_button "signupSubmit"}.not_to change(User, :count)
  end
end