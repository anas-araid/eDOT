class Patient < ApplicationRecord
  belongs_to :user #chw
  belongs_to :health_center
  has_many :reports
  has_many :positions
  validates :name, :surname, :gender, :user_id, :health_center_id, :birthdate, :address, presence:true
  validates :phone, :phone_number => {:format => /^[\d-]*$/}
  validate :valid_address

  scope :by_name, -> (name) { where("name like ?", "%#{name}%") }
  scope :by_surname, -> (surname) { where("surname like ?", "%#{surname}%") }
  scope :by_address, -> (address) { where("address like ?", "%#{address}%") }
  scope :by_phone, -> (phone) { where("phone like ?", "%#{phone}%") }
  scope :by_gender, -> (gender) { where(gender: gender) }
  scope :by_chw, -> (chw) { where(user_id: chw) }

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn\'t seem to be a valid address")
    end
    !Geocoder.search(address).empty?
  end
end
