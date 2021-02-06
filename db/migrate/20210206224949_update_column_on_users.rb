class UpdateColumnOnUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name
    add_column :users, :company_name, :string
  end
end
