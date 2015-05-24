require 'faker'

admin = User.create(name: "admin",
            password: "password")

10.times do
  admin.subforums.create(title: Faker::Name.title,
                        description: Faker::Name.title)
end

15.times do
  user = User.create(name: Faker::Internet.user_name,
                     password: Faker::Internet.password)
  Subforum.all.each do |subforum|
    subforum.topics.create(title: Faker::Name.title,
                           body: Faker::Lorem.paragraph,
                           user_id: user.id)
  end
end

User.all.each do |user|
  Topic.all.each do |topic|
    topic.replies.create(user_id: user.id,
                          body: Faker::Lorem.paragraph)
  end
end