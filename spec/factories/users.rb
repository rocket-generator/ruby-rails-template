# frozen_string_literal: true

# Fake data for User model
FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
  end
end
