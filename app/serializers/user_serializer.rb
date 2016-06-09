#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name, :last_name

  # def invitations
  #   object.invitations.pluck(:id)
  # end
  # has_many :invitations
end
