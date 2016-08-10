class AddPositionToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :address, :string 
  end
end
