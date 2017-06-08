require 'rails_helper'

RSpec.describe 'Jobs', type: :feature do 
  
  before do
    @user = login_user
  end

  describe '#create' do
    let(:job) {build :job}
    
    it 'valid attributes' do 
      visit new_user_job_path(@user)

      job_form(job, 'Create')    

      expect(page).to have_content job.title
      expect(page).to have_content job.description
    end

    it 'invalid attributes' do 
      visit new_user_job_path(@user)
      new_job = build(:job, title: nil, description: nil)

      job_form(new_job, 'Create')    

      expect(page).to have_content "can't be blank"
    end
  end

end

def job_form(attribute, button)
  
  fill_in 'Title', with: attribute.title
  fill_in 'Description', with: attribute.description

  click_button button
end