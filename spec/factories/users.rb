FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@user.com"
  end

  factory :user do
    email { generate :email}
    first_name 'John'
    last_name 'Snow'
    password 'testpass123'
    password_confirmation 'testpass123'
  end

  factory :admin_user, class: 'AdminUser' do
    email { generate :email}
    first_name 'Admin'
    last_name 'User'
    password 'testpass123'
    password_confirmation 'testpass123'
  end
end
