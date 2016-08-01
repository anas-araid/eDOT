class AddCommunityHealthWorkerIdToPatient < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :community_health_worker_id, :integer
  end
end
