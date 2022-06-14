class AddSalesmanInfoTo < ActiveRecord::Migration[6.1]
  def change
    add_reference :custom_dashboards, :salesman_infos, index: true
  end
end
