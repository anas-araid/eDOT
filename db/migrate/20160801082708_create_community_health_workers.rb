class CreateCommunityHealthWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :community_health_workers do |t|
      t.string :name
      t.string :surname
      t.date :birthdate
      t.string :gender
      t.string :phone

      t.timestamps
    end
  end
end
