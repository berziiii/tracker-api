class CohortSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :market, :profiles
  # has_many :profiles
end
