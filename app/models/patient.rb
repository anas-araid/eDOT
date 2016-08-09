class Patient < ApplicationRecord
  belongs_to :user #chw
  belongs_to :health_center
  has_many :reports
  validates :name, :surname, :gender, :birthdate, presence:true
  validates :phone, :phone_number => {:format => /^[\d-]*$/}

  scope :by_name, -> (name) { where("name like ?", "%#{name}%") }

  #validate :valid_address

  def valid_address
    if Geocoder.search(address).empty?
      errors.add(:address, "doesn't seem to be a valid address")
    end
    !Geocoder.search(address).empty?

  end
end
