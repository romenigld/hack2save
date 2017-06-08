require 'ffaker'

FactoryGirl.define do
  factory :user do
    email { FFaker::Internet.email }
    password 'secret'
    password_confirmation { password }

    trait :admin do
      admin true
    end
  end
end
