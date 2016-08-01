class CommunityHealthWorker < ApplicationRecord
  belongs_to :health_center
  has_many :patients
  has_many :reports
end
