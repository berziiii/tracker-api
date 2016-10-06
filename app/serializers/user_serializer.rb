#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin, :profile
  has_one :profile

  def profile
    object.profile.id
  end

end
