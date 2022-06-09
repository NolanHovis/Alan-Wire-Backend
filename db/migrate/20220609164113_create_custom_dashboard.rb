class CreateCustomDashboard < ActiveRecord::Migration[6.1]
  def change
    create_table :custom_dashboards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :dashboard_item , null: false, foreign_key: true
      # will need reference for salesman in secondary migration
      t.timestamps
    end
  end
end
