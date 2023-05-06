class Schedule < ApplicationRecord
  belongs_to :user
  has_many :workout_days
  has_many :workouts, through: :workout_days
  # has_many :workout_exercises, through: :workouts
  # has_many :exercises, through: :workout_exercises
  
end
