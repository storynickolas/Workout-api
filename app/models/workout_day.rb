class WorkoutDay < ApplicationRecord
  belongs_to :schedule
  belongs_to :workout 
  has_many :workout_exercises, through: :workout

  validates_inclusion_of :day, in: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
end
