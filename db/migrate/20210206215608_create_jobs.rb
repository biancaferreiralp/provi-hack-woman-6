class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :area
      t.string :requirements
      t.string :format
      t.string :modality
      t.text :benefits
      t.boolean :deactivated, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
