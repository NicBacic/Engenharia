FactoryBot.define do
  factory :user do |user|
    user.username               "User Test"
    user.email                  "user@example.com"
    user.password               "123456"
  #user.password_confirmation  "password"
  end
end
