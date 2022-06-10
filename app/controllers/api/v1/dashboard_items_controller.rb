module Api
  module V1
    class DashboardItemController < Api::V1::ApplicationController
      def create
        result = DashboardItem.new_dashboard_item(dashboard_item_params, @current_user)
        render_error(errors: "Error saving dashboard item", status: 400) and return unless result.success?
        payload = {
          "You have saved this dashboard item"
        }
        render_success(payload: payload)
      end

      def update
        result = DashboardItem.update_dashboard_item(params[:id], dashboard_item_params, @current_user)
        render_error(errors: "Error updating dashboard item", status: 400) and return unless result.success?
        payload = {
          "You have updated this dashboard item"
        }
        render_success(payload: payload)
      end

      def destroy
        result = DashboardItem.destroy_dashboard_item(params[:id], @current_user)
        render_error(errors: "Error deleting dashboard item", status: 400) and return unless result.sucess?
        render_success(payload: nil)
      end

      private 
      def dashboard_item_params
        params.require(:dashboard_item).permit(:name, :size, :display_type)
      end
    end
  end
end