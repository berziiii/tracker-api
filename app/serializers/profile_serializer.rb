class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :phone_number, :github_username
end
