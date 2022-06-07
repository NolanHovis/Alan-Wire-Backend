class CreateDashboardItems < ActiveRecord::Migration[6.1]
  def change
    create_table :dashboard_items do |t|
      t.string :name
      t.integer :size
      t.integer :display_type

      t.timestamps
    end
  end
end
