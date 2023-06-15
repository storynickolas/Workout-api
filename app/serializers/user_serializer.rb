class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :id
  has_one :schedule
  has_many :saved_workouts, serializer: SavedWorkoutSerializer


end
