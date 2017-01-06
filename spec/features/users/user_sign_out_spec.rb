require 'rails_helper'

RSpec.feature "Sign out" do
	before do
		@user = User.create!(email: "barvis@test.com", password: "123456")
		login_as(@user)
	end

	scenario 'user signs out' do
		visit '/'
		click_link "Sign out"

		expect(page).to have_content("Signed out successfully")
	end
end