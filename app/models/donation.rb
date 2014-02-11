class Donation < ActiveRecord::Base
  belongs_to :user
  has_one :charity

  def self.by_user user
  	Donation.where(user_id: user.id)
  end
  
end
