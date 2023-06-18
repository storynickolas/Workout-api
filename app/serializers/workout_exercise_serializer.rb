class WorkoutExerciseSerializer < ActiveModel::Serializer
  attributes :id, :exercise, :reps, :sets
  belongs_to :workout, serializer: ExerciseUserSerializer
end
