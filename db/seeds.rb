@user = User.create!(
    email: 'test@foobar.com',
    password: '123456',
    password_confirmation: '123456',
    first_name: 'John',
    last_name: 'Snow'
)

puts 'User have been created'

100.times do
  Post.create!(
      date: Date.today,
      rationale: Faker::Lorem.sentence,
      user_id: @user.id
  )
end

puts '100 Posts have been created'