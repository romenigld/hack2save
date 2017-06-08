require 'ffaker'

FactoryGirl.define do
  factory :profile do
    name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    job_title {FFaker::Job.title }
    social_entity false
    phone_number { FFaker::PhoneNumber.phone_number }
    contact_email { FFaker::Internet.email }
    description { FFaker::Book.description }
  end
end
