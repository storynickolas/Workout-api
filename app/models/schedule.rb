class Schedule < ApplicationRecord
  belongs_to :user
  has_many :workout_days
  has_many :workouts, through: :workout_days

  validates :user_id, uniqueness: true
end
