require 'rails_helper'

RSpec.feature "User sign in" do
	before do
		@user = User.create!(email: "barvis@test.com", password: "123456")
	end
	scenario "signin" do
		visit '/'
		click_link 'Sign in'
		fill_in "Email", with: @user.email
		fill_in "Password", with: @user.password
		click_button "Log in"

		expect(page).to have_content("Signed in successfully.")
		expect(page).to have_content("Signed in as #{@user.email}")
	end
end