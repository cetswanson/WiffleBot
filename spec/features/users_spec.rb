require "rails_helper"

RSpec.feature "User signs up", :type => :feature do

  scenario "without valid credentials" do
    visit root_path

    fill_in "signup_name", :with => "test"
    fill_in "signup_password", :with => "password"
    fill_in "signup_password_confirmation", :with => "not_password"

    expect{click_on "signupSubmit"}.not_to change(User, :count)
  end
end