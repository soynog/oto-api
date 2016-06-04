class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :location, :description
  has_one :user
end
