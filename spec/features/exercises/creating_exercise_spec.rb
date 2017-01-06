require 'rails_helper'

RSpec.feature "Creating Exercise" do
	before do
		@user = User.create!(email: "barvis@test.com", password: "123456")
		login_as(@user)
	end

	scenario "with valid input" do
		visit '/'
		click_link "My Lounge"
		click_link "New Workout"
		expect(page).to have_link("Back")
		fill_in "Duration", with: 70
		fill_in "Workout Details", with: "Weight Lifting"
		fill_in "Activity date", with: "2016/07/26"
		click_button "Create Exercise"
		expect(page).to have_content("Exercise has been created")
		exercise = Exercise.last
		expect(current_path).to eq(user_exercise_path(@user, exercise))
		expect(exercise.user_id).to eq(@user.id)
	end
end