class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  has_many :workout_days
end