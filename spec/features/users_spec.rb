require "rails_helper"

RSpec.feature "User sign up", :type => :feature do
  scenario "A user signs up correctly" do
    visit root_path

    fill_in "signup_name", :with => "test"
    fill_in "signup_password", :with => "test"
    fill_in "signup_password_confirmation", :with => "test"

    expect{click_button "Sign Up"}.to change{User.count}.by(1)
  end

  scenario "A user signs up incorrectly" do
    visit root_path

    fill_in "signup_name", :with => "test"
    fill_in "signup_password", :with => "test"
    fill_in "signup_password_confirmation", :with => "not_test"

    expect{click_button "Sign Up"}.not_to change(User, :count)
  end
end