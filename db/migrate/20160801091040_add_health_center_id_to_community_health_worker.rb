class AddHealthCenterIdToCommunityHealthWorker < ActiveRecord::Migration[5.0]
  def change
    add_column :community_health_workers, :healt_center_id, :integer
  end
end
