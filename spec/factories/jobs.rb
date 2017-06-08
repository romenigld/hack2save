FactoryGirl.define do
  factory :job do
    user 
    title {FFaker::Job.title}
    description {FFaker::Lorem.paragraph}
  end
end
