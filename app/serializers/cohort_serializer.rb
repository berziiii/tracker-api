class CohortSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :market, :program, :profiles, :enrollments

  def program
    object.program.id
  end

  def enrollments
    object.enrollments.pluck(:id)
  end

  def profiles
    object.profiles.pluck(:id)
  end

end
