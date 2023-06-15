class Schedule < ApplicationRecord
  belongs_to :user
  has_many :workout_days
  has_many :workouts, through: :workout_days

  
end
