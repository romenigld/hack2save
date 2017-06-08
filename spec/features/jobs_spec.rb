require 'rails_helper'

RSpec.describe 'Jobs', type: :feature do 

  before do
    @user = login_user
  end

  describe '#create' do
    
    it 'valid attributes' do 
      visit new_user_job_path(@user)
    end
  end

end