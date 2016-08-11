class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :phone_number, :github_username,
:cohorts, :enrollments, :attendences

  def cohorts
    object.cohorts.pluck(:id)
  end

  def enrollments
    object.enrollments.pluck(:id)
  end

  def attendences
    object.attendences.pluck(:id)
  end
end
