require "rails_helper"

RSpec.feature "User creates a new reply", :type => :feature do

  let!(:user) { User.create(name: "username", password: 'password', password_confirmation: 'password')}
  let!(:subforum) { Subforum.create(id: 1, title: "title", description: "test", user_id: user.id) }
  let!(:topic) { Topic.create(id: 1, title: "test", subforum_id: 1, body: "test", user_id: user.id) }

  scenario "with a body" do
    page.set_rack_session(user_id: user.id)
    visit new_subforum_topic_reply_path(subforum.id, topic.id)

    fill_in "reply[body]", :with => "test"

    expect{click_on "Submit"}.to change{Reply.count}.by(1)
  end

end