class Trip < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :users, through: :invitations
end
