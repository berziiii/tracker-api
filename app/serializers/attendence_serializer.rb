class AttendenceSerializer < ActiveModel::Serializer
  attributes :id, :day, :option, :note, :profile
  has_one :profile

  def profile
    object.profile.id
  end
end
