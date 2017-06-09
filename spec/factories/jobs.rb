FactoryGirl.define do
  factory :job do
    title {FFaker::Job.title}
    description {FFaker::Lorem.paragraph}
  end
end
