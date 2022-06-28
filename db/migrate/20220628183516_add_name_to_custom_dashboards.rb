class AddNameToCustomDashboards < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_dashboards, :name, :string
  end
end
