class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio
  has_one :schedule, serializer: ScheduleSerializer
end
