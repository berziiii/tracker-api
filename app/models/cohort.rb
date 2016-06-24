class Cohort < ActiveRecord::Base
  belongs_to :program
  has_many :enrollments
  has_many :profiles, through: :enrollments
end
