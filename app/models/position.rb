class Position < ApplicationRecord
  has_one :report
  belongs_to :patient
end
