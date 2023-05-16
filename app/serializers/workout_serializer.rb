class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :time
  has_many :workout_exercises
  has_many :reviews
end
