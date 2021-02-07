class RemoveColumnsFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :area
    remove_column :jobs, :deactivated
  end
end
