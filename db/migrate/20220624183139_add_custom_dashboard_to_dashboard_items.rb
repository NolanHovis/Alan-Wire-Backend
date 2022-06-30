class AddCustomDashboardToDashboardItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :dashboard_items, :custom_dashboard, null: false, foreign_key: true
  end
end
