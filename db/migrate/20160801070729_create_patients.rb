class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.string :gender
      t.date :birthdate
      t.string :phone
      t.date :starting_therapy_day

      t.timestamps
    end
  end
end
