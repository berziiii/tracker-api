class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :cohort_id, :cohort, :profile
  has_one :profile
  has_one :cohort

  def cohort
    object.cohort.id
  end

  def profile
    object.cohort.id
  end

end
