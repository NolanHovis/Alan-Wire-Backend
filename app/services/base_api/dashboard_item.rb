module BaseApi
  module DashboardItem
    def self.new_dashboard_item(params, current_user)
      dashboard_item = current_user.dashboard_item.new(params)
      return ServiceContract.error('There was an error saving the dashboard item.') unless dashboard_item.save
      ServiceContract.success(dashboard_item)
    end

    def self.update_dashboard_item(dashboard_item_id, params, current_user)
      dashboard_item = current_user.dashboard_item.find(dashboard_item_id)
      return ServiceContract.error('There was an error updating the dashboard item.') unless dashboard_item.update(params)
      ServiceContract.success(dashboard_item)
    end

    def self.destroy_dashboard_item(dashboard_item_id, current_user)
      dashboard_item = current_user.dashboard_item.find(dashboard_item_id)
      return ServiceContract.error('There was an error deleting the dashboard item.') unless dashboard_item.destroy
      ServiceContract.success(payload: nil)
    end
  end
end
