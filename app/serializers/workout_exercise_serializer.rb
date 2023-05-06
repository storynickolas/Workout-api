class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise_id, :workout_id
end
