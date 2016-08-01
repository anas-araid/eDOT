class AddHealthCenterIdToCommunityHealthWorker < ActiveRecord::Migration[5.0]
  def change
    add_column :community_health_workers, :health_center_id, :integer
  end
end
