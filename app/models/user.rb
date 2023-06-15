class User < ApplicationRecord
  has_secure_password
  has_one :schedule
  has_many :saved_workouts

end
