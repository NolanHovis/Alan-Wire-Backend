module Api
	module V1
		class CustomDashboardsController < Api::V1::ApplicationController
    
			#GET current_user
			def my_dash
				render_success(payload: CustomDashboardBlueprint.render_as_hash(@current_user.custom_dashboard))
			end
			
			#POST/api/v1/custom_dashboard
			def create
				result = BaseApi::CustomDashboard.new_custom_dashboard(custom_dashboard_params, @current_user)
				render_error(errors: "There was an error creating this dashboard.", status: 400) and return unless result.success?
				payload = {
					custom_dashboard: CustomDashboardBlueprint.render_as_hash(result.payload),
				}
				render_success(payload: payload)
			end
			
			#PATCH/PUT/api/v1/custom_dashboard/:id
			def update
				result = BaseApi::CustomDashboard.update_custom_dashboard(params[:id], custom_dashboard_params, @current_user)
				render_error(errors: "There was a n error updating this dashboard.", status: 400) and return unless result.success?
				payload = {
					custom_dashboard: CustomDashboardBlueprint.render_as_hash(result.payload),
				}
				render_success(payload: payload)
			end
			
			#DELETE/api/v1/custom_dashboard:id
			def destroy
				result = BaseApi::CustomDashboard.destroy_custom_dashboard(params[:id], @current_user)
				render_error(errors: "There was an error deleting this dashboard.", status: 400) and return unless result.success?
				render_success(payload: nil)
			end
			
			private
			def custom_dashboard_params
				params.require(:custom_dashboard).permit(:sales_id, :manager_id, :dashboard_id, :name)
			end
		end
	end
end
