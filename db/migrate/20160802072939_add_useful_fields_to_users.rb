class AddUsefulFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :birthdate, :date
    add_column :users, :gender, :string
    add_column :users, :phone, :string
    add_column :users, :health_center_id, :integer
  end
end
