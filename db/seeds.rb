require 'faker'

10.times do
    City.create(name: Faker::Adress.city, zip_code: Faker::Adress.zip_code)
end

10.times do
    user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        description: Faker::Lorem,paragraph,
        email: Faker::Internet.email,
        age: rand(18..60),
        city: City.all.sample
    )
end

20.times do
    gossip = Gossip.crate(
        title: Faker::Lorem.sentence,
        content: Faker::Lorem.paragraph,
        user: User.all.sample
    )

    tags = Tag.all.sample(rand(1..3))
    gossip.tags << tags
end

10.times do
    Tag.create(title "##{Faker::Lorem.word}")
end

10.times do
    sender ) User.all.sample
    recipients = User.all.sample(rand(1..3))
    message_content = Faker::Lorem.paragraph

    pm = PrivateMessage.create(content: message_content, sender: sender)
    pm.recipients << recipients
end