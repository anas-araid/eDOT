class HealthCenter < ApplicationRecord
  has_many :users
  has_many :patients
end
