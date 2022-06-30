class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_reference :dashboard_items, :salesman_infos
  end
end
