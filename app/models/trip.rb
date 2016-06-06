class Trip < ActiveRecord::Base
  belongs_to :user, inverse_of: :trips # Trip Organizer
  has_many :invitations, inverse_of: :trip, dependent: :destroy
  has_many :users, through: :invitations # Trip Invitees
end
