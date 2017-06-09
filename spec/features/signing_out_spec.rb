require "rails_helper"
RSpec.feature "Signed-in users can sign out" do
  let!(:user) { create(:user) }

  before do
    login_as(user)
  end

  scenario do
    visit "/"
    click_link "Sign Out"
    expect(page).to have_content "Signed out successfully."
  end
end
