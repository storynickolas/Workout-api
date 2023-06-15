class WorkoutSerializer < ActiveModel::Serializer
  attributes :name, :time, :id, :user_id
  has_many :workout_exercises
  has_many :reviews
end
