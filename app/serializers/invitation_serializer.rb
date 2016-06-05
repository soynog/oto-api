class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status
  has_one :user
  has_one :trip
end
