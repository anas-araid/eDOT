class RemoveCommunityHealthWorkerIdFromReports < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :community_health_worker_id, :integer
  end
end
