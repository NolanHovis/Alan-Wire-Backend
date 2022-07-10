class RemoveDashboardItemsFromSalesmanInfo < ActiveRecord::Migration[6.1]
  def change
    remove_reference :salesman_infos, :dashboard_items, index: true
  end
end
