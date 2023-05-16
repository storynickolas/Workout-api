class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise, :reps, :sets
end
