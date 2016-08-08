class Patient < ApplicationRecord
  belongs_to :user #chw
  belongs_to :health_center
  has_many :reports
  validates :name, :surname, :gender, :birthdate, presence:true
  validates :phone, :phone_number => {:format => /^[\d-]*$/}

  scope :name_filter, -> (name) { where("name like ?", "%#{name}%") }
  scope :surname_filter, -> (surname) { where("surname like ?", "%#{surname}%") }
  scope :address_filter, -> (address) { where("address like ?", "%#{address}%") }
  scope :gender_filter, -> (gender) { where(gender: gender) }
  scope :phone_filter, -> (phone) { where("phone like ?", "%#{phone}%") }


  #validate :valid_address

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn't seem to be a valid address")
    end
    !Geocoder.search(address).empty?

  end
end
