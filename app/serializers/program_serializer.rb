class ProgramSerializer < ActiveModel::Serializer
  attributes :id, :title, :cohorts

  def cohorts
    object.cohorts.pluck(:id)
  end
end
