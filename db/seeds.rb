100.times do
  Post.create!(date: Date.today, rationale: Faker::Lorem.sentence)
end

puts '100 Posts have been created'