class CommunityHealthWorker < ApplicationRecord
  belongs_to :health_center
  has_many :patients
end
