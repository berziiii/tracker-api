class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :cohort_id
  has_one :profile
  has_one :cohort
end
