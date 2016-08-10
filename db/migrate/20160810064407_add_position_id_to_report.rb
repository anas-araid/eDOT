class AddPositionIdToReport < ActiveRecord::Migration[5.0]
  def change
    add_column :reports, :position_id, :integer
  end
end
