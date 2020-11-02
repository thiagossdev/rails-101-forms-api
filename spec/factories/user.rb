require 'date'

FactoryBot.define do
  timestamp = FFaker::Time.between DateTime.now - 30, DateTime.now

  factory :user do
    uid          { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    name         { FFaker::Name.name }
    nickname     { FFaker::Internet.user_name }
    password     { FFaker::Lorem.characters(8) }
    provider     { 'email' }
    confirmed_at { timestamp }
    created_at   { timestamp }
    updated_at   { timestamp }
  end
end
