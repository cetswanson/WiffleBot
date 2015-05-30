require "rails_helper"

RSpec.feature "User creates a new subforum", :type => :feature do

  let!(:user) { User.create(name: "username", password: 'password', password_confirmation: 'password')}
  let!(:subforum) { Subforum.create(title: "title", description: "test", user_id: user.id) }

  scenario "A user creates a new subforum correctly" do
    page.set_rack_session(user_id: user.id)
    visit subforums_path
    click_on "Add a new Subforum"

    fill_in "subforum_title", :with => "test"
    fill_in "subforum_description", :with => "test"

    click_on "subforumSubmit"
    expect(page).to have_text("test")
  end

  scenario "A user creates a new subforum without a title" do
    page.set_rack_session(user_id: user.id)
    visit subforums_path
    click_on "Add a new Subforum"

    fill_in "subforum_description", :with => "test"

    expect{click_on "subforumSubmit"}.not_to change(Subforum, :count)
  end
end