require "rails_helper"

RSpec.feature "User creates a new topic", :type => :feature do

  let!(:user) { User.create(name: "username", password: 'password', password_confirmation: 'password')}
  let!(:subforum) { Subforum.create(title: "title", description: "test", user_id: user.id) }

  scenario "A user creates a new topic correctly" do
    page.set_rack_session(user_id: user.id)
    visit subforum_topics_path(subforum)
    click_on "Add a topic"

    fill_in "topic_title", :with => "test"
    fill_in "topic_description", :with => "test"

    expect{click_button "Submit"}.to change{Topic.count}.by(1)
  end

  scenario "A user creates a new topic correctly" do
    page.set_rack_session(user_id: user.id)
    visit subforum_topics_path(subforum)
    click_on "Add a topic"

    fill_in "topic_description", :with => "test"

    expect{click_button "Submit"}.not_to change(Topic, :count)
  end

end