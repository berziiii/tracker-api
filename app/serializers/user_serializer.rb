#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :profile
  has_one :profile
end
