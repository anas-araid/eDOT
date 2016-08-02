class Report < ApplicationRecord
  belongs_to :patient
  belongs_to :user
end
