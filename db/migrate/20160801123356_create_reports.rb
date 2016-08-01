class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.integer :patient_id
      t.integer :community_health_worker_id
      t.date :date
      t.text :health_status

      t.timestamps
    end
  end
end
