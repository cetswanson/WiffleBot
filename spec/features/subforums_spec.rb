require "rails_helper"

RSpec.feature "User creates a new subforum", :type => :feature do

  let!(:user) { User.create(name: "username", password: 'password', password_confirmation: 'password')}

  scenario "A user creates a new subforum correctly" do
    page.set_rack_session(user_id: user.id)
    visit subforums_path
    click_on "Add a new subforum"

    fill_in "subforum_title", :with => "test"
    fill_in "subforum_description", :with => "test"

    expect{click_button "Submit"}.to change{Subforum.count}.by(1)
  end

  scenario "A user creates a new subforum with a title" do
    page.set_rack_session(user_id: user.id)
    visit subforums_path
    click_on "Add a new subforum"

    fill_in "subforum_description", :with => "test"

    expect{click_button "Submit"}.not_to change(Subforum, :count)
  end
end