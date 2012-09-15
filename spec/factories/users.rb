# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name 'Ash'
    email 'ash@ash.com'
    password 'mypassword'
    password_confirmation 'mypassword'
    remember_me 'yes'
  end
end
