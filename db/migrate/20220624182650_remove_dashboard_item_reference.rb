class RemoveDashboardItemReference < ActiveRecord::Migration[6.1]
  def change
    remove_reference :custom_dashboards, :dashboard_item
  end
end
