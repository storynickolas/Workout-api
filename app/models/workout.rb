class Workout < ApplicationRecord
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
  has_many :workout_days
  has_many :saved_workouts
  has_many :reviews
end
