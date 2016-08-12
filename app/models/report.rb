class Report < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_one :position
  validates :user_id, :date, :address, presence:true
  validate :valid_address

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn't seem to be a valid address")
    end
    !Geocoder.search(address).empty?
  end
end
