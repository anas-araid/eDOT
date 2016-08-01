class Report < ApplicationRecord
  belongs_to :patient
  belongs_to :community_health_worker
end
