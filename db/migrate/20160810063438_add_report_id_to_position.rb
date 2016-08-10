class AddReportIdToPosition < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :report_id, :integer 
  end
end
