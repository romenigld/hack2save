require 'rails_helper'

RSpec.describe 'Jobs', type: :feature do 
  
  before do
    @user = login_user
  end

  describe '#create' do
    let(:job) {build :job}
    
    it 'valid attributes' do 

      visit new_user_job_path(@user)

      fill_in 'Title', with: job.title
      fill_in 'Description', with: job.description

      click_button 'Create'

      expect(page).to have_content job.title
      expect(page).to have_content job.description
    end
  end

end