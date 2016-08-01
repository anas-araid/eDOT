class Doctor < ApplicationRecord
  #there could be a doctor without healt center
  has_one :health_center

  validate :health_center_exists

  def health_center_exists
    if !health_center_id.nil? && !HealthCenter.all.exists?(health_center_id)
      errors.add(:health_center_id, "doesn't exist.")
      return false
    else
      return true
    end
  end
end
