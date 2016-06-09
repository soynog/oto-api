class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :user

  # has_one :trip
  # has_one :user
  def user
    object.user.id
  end

  # def trip
  #   print "Trip Id = #{object.trip.id}"
  #   object.trip.id
  # end
end
