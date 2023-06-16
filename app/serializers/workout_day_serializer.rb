class WorkoutDaySerializer < ActiveModel::Serializer
  attributes :id, :day, :workout, :schedule_id, :workout_exercises, :schedule
end
