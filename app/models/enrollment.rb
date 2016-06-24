class Enrollment < ActiveRecord::Base
  belongs_to :profile, inverse_of: :enrollments
  belongs_to :cohort, inverse_of: :enrollments
end
