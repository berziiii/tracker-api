#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin, :profile
  has_one :profile
end
