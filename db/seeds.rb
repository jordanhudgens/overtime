100.times do
  Post.create!(date: Date.today, rationale: Faker::Lorem.sentence)
end