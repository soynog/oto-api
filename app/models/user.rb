#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :invitations
  has_many :trips, through: :invitations
end
