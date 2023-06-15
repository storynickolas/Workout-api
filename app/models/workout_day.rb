class WorkoutDay < ApplicationRecord
  belongs_to :schedule
  belongs_to :workout 
  has_many :workout_exercises, through: :workout

end
