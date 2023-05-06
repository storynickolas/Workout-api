class User < ApplicationRecord
  has_secure_password
  has_one :schedule

  # has_many :workouts, through: :workout_days
end
