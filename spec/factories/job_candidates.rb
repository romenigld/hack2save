FactoryGirl.define do
  factory :job_candidate do
    user nil
    job nil
    status 1
    presentation_letter "MyText"
  end
end
