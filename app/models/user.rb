#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :invitations, inverse_of: :user, dependent: :destroy
  has_many :trips, through: :invitations
end
