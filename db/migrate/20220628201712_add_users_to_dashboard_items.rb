class AddUsersToDashboardItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :dashboard_items, :user
  end
end
