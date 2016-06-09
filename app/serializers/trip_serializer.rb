class TripSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_date, :end_date, :location, :description, :invitations
  # has_one :user
  # has_many :invitations
  def invitations
    object.invitations.pluck(:id)
  end
end
