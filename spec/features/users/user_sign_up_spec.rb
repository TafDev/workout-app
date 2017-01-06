require 'rails_helper'

RSpec.feature "User sign up" do
	scenario "with valid credentials" do
		visit '/'
		click_link "Sign up"
		fill_in "Email", with: "barvis@test.com"
		fill_in "Password", with: "123456"
		fill_in "Password confirmation", with: "123456"
		click_button "Sign up"

		expect(page).to have_content("You have signed up successfully.")
	end


end