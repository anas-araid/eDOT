class AddDoctorIdToHealthCenter < ActiveRecord::Migration[5.0]
  def change
    add_column :health_centers, :doctor_id, :integer
  end
end
