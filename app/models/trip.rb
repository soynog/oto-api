class Trip < ActiveRecord::Base
  belongs_to :user # Trip Organizer
  has_many :invitations
  has_many :users, through: :invitations # Trip Invitees
end
