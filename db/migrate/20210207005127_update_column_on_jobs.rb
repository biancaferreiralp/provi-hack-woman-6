class UpdateColumnOnJobs < ActiveRecord::Migration[6.0]
  def change
    remove_column :jobs, :requirements
    add_column :jobs, :requirements, :string, default: [], array: true
  end
end
