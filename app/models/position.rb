class Position < ApplicationRecord
  geocoded_by :address
  after_validation :geocode
  belongs_to :patient
end
