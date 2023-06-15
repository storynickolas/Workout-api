class SavedWorkout < ApplicationRecord
  belongs_to :user
  belongs_to :workout
end
