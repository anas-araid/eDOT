class AddUserIdToPatientsAndReports < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :user_id, :integer
    add_column :reports, :user_id, :integer
  end
end
