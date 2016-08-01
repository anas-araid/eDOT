class AddHealthCenterIdToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :health_center_id, :integer
  end
end
