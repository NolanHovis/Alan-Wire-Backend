module Api
  module V1
    class DashboardItemsController < Api::V1::ApplicationController
			def index
				render_success(payload: DashboardItemBlueprint.render_as_hash(@current_user.dashboard_items))
			end

      def create
        result = DashboardItemService.new_dashboard_item(dashboard_item_params, @current_user)
        render_error(errors: "Error saving dashboard item", status: 400) and return unless result.success?
        payload = {
          dashboard_item: DashboardItemBlueprint.render_as_hash(result.payload, view: :normal)
        }
        render_success(payload: payload)
      end

      def update
        result = DashboardItemService.update_dashboard_item(params[:id], dashboard_item_params, @current_user)
        render_error(errors: "Error updating dashboard item", status: 400) and return unless result.success?
        payload = {
          dashboard_item: DashboardItemBlueprint.render_as_hash(result.payload)
        }
        render_success(payload: payload)
      end

      def destroy
        result = DashboardItemService.destroy_dashboard_item(params[:id], @current_user)
        render_error(errors: "Error deleting dashboard item", status: 400) and return unless result.sucess?
        render_success(payload: nil)
      end

      private 
      def dashboard_item_params
        params.require(:dashboard_item).permit(:name, :size, :display_type, :custom_dashboard_id)
      end
    end
  end
end