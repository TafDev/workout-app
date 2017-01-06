class Exercise < ApplicationRecord
	belongs_to :user

	validates :duration_in_min, numericality: {greather_than: 0.0}, presence: true
	validates :workout, presence: true
	validates	:workout_date, presence: true

end
