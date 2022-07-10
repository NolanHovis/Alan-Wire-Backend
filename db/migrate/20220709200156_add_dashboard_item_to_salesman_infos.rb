class AddDashboardItemToSalesmanInfos < ActiveRecord::Migration[6.1]
  def change
    add_reference :salesman_infos, :dashboard_item, null: true, foreign_key: true
  end
end
