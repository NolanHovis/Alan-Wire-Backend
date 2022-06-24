class AddSalesmanInfosToDashboardItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :dashboard_items, :salesman_infos, index: true
  end
end
