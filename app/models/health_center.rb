class HealthCenter < ApplicationRecord
  has_many :users
  has_many :patients

  validates :name, presence:true
  validates :phone, :phone_number => {:format => /^[\d-]*$/}
  validate :valid_address

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn't seem to be a valid address")
    end
    !Geocoder.search(address).empty?
  end
end
