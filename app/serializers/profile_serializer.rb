class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :phone_number, :github_username, :cohorts, :enrollments
  def cohorts
    object.cohorts.pluck(:id)
  end

  def enrollments
    object.enrollments.pluck(:id)
  end
end
