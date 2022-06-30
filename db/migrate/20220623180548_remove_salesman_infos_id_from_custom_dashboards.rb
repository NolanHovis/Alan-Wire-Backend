class RemoveSalesmanInfosIdFromCustomDashboards < ActiveRecord::Migration[6.1]
  def change
    remove_reference :custom_dashboards, :salesman_infos
  end
end
