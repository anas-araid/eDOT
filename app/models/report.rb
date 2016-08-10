class Report < ApplicationRecord
  belongs_to :patient
  belongs_to :user
  has_one :position
end
