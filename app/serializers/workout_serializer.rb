class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :time
  has_many :exercises, serializer: ExerciseSerializer
end
