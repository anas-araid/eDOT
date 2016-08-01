class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.date :birthdate
      t.string :phone
      t.string :gender
      t.integer :health_center_id

      t.timestamps
    end
  end
end
