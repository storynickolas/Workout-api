class ScheduleSerializer < ActiveModel::Serializer
  attributes :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
end
