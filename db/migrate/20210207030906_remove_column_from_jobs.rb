class RemoveColumnFromJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :benefits
  end
end
