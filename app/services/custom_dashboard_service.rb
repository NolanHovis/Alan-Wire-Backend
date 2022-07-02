module CustomDashboardService
    def self.new_custom_dashboard(params, current_user)
        custom_dashboard = current_user.custom_dashboards.new(params)
        return ServiceContract.error('Error creating custom dashboard' ) unless custom_dashboard.save
        ServiceContract.success(custom_dashboard)
    end

    def self.update_custom_dashboard(custom_dashboard_id, params, current_user)
        custom_dashboard = current_user.custom_dashboards.find(custom_dashboard_id)
        return ServiceContract.error('Error updating custom dashboard') unless custom_dashboard.update(params)
        ServiceContract.success(custom_dashboard)
    end

    def self.destroy_custom_dashboard(custom_dashboard_id, current_user)
        custom_dashboard = current_user.custom_dashboards.find(custom_dashboard_id)
        return ServiceContract.error('There was an error deleting the custom dashboard.') unless custom_dashboard.destroy
        ServiceContract.success(payload: nil)
    end
end
