require "rails_helper"

RSpec.feature "User creates a new topic", :type => :feature do

  let!(:user) { User.create(name: "username", password: 'password', password_confirmation: 'password')}
  let!(:subforum) { Subforum.create(title: "title", description: "test", user_id: user.id) }

  scenario "A user creates a new topic correctly" do
    page.set_rack_session(user_id: user.id)
    visit new_subforum_topic_path(subforum)

    fill_in "topic_title_form", :with => "test"
    fill_in "topic_description_form", :with => "test"

    click_on "Create"

    expect(page).to have_content("test")
  end

  scenario "A user creates a new topic correctly" do
    page.set_rack_session(user_id: user.id)
    visit new_subforum_topic_path(subforum)

    fill_in "topic_description_form", :with => "test"

    expect{click_on "Create"}.not_to change(Topic, :count)
  end

end