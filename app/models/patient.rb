class Patient < ApplicationRecord
  belongs_to :user #chw
  belongs_to :health_center
  has_many :reports
  validates :name, :surname, :gender, :birthdate, presence:true
  validates :phone, :phone_number => {:format => /^[\d-]*$/}

  scope :name_s, -> (name) { where name: name }
  scope :surname_s, -> (surname) { where surname: surname }


  #validate :valid_address

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn't seem to be a valid address")
    end
    !Geocoder.search(address).empty?

  end
end
