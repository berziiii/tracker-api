class EnrollmentSerializer < ActiveModel::Serializer
  attributes :id, :profile_id, :cohort_id , :status
  # has_one :profile
  # has_one :cohort
end
