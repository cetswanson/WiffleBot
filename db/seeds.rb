require 'faker'

User.create(name: "admin",
            password: "password")

15.times do
  user = User.create(name: Faker::Internet.user_name,
                     password: Faker::Internet.password)
  10.times do
    user.topics.create(title: Faker::Name.title,
                       body: Faker::Lorem.paragraph)
  end
end

User.all.each do |user|
  Topic.all.each do |topic|
    topic.replies.create(user_id: user.id,
                          body: Faker::Lorem.paragraph)
  end
end