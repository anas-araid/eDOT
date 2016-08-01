class RemoveHealtCenterIfFromCommunityHealthWorker < ActiveRecord::Migration[5.0]
  def change
    remove_column :community_health_workers, :healt_center_id
  end
end
