class Invitation < ActiveRecord::Base
  belongs_to :user, inverse_of: :invitations
  belongs_to :trip, inverse_of: :invitations
  validates_uniqueness_of :user, scope: :trip
end
