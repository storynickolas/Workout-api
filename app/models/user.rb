class User < ApplicationRecord
  has_secure_password
  has_one :schedule, dependent: :destroy
  has_many :saved_workouts

  validates :username, uniqueness: true

  after_create :create_user_schedule

  ... ...

  private
    def create_user_schedule
      Schedule.create(user_id: self.id)
    end
end
