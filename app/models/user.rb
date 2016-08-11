class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :patients
  has_one :health_center
  has_many :reports

  validates :user_type, :name, :surname, presence: true

  validate :correct_type
  validate :health_center_exists

  def correct_type
    tt=%w(doctor chw)
    if tt.include? user_type
      return true
    else
      errors.add(:user_type, "is not a valid type.")
      return false
    end
  end
  def health_center_exists
    if not health_center_id.nil? and HealthCenter.where(id: health_center_id).empty?
      errors.add(:health_center_id, "doesn't exist.")
      return false
    else
      return true
    end
  end
end
