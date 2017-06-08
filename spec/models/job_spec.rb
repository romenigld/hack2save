require 'rails_helper'

RSpec.describe Job, type: :model do
  it 'is valid with valid attributes' do
    job = Job.new(title: 'title', description: 'description', user_id: 1 )
    expect(job).to be_valid
  end 

  it 'is not valid without a user' do
    job = Job.new(user_id: nil)
    expect(job).to_not be_valid
  end

  it 'is not valid without a title' do
    job = Job.new(title: nil)
    expect(job).to_not be_valid
  end

  it 'is not valid without a description' do
    job = Job.new(title: 'title', description: nil)
    expect(job).to_not be_valid
  end
end
