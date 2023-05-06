class ScheduleSerializer < ActiveModel::Serializer
  attributes :id
  has_many :workout_days
end