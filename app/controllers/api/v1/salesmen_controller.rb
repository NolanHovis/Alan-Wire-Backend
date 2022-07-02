module Api
  module V1
    class SalesmenController < Api::V1::ApplicationController
			def my_salesman
				render_success(payload: SalesmanBlueprint.render_as_hash(@current_user.salesman))
			end

      def create
        salesman = Salesman.new_salesman(salesman_params, @current_user)
        render_error(errors: "Error saving salesman", status: 400) and return unless result.success?
        payload = {
          saleman: SalesmanBlueprint.render_as_hash(result.payload, view: :normal)
        }
        render_success(payload: payload)
      end

      def update
        result = Salesman.update_salesman(params[:id], salesman_params, @current_user)
        render_error(errors: "Error updating salesman", status: 400) and return unless result.success?
        payload = {
          saleman: SalesmanBlueprint.render_as_hash(result.payload)
        }
        render_success(payload: payload)
      end

      def destroy
        result = Salesman.destroy_salesman(params[:id], @current_user)
        render_error(errors: "Error deleting saleman", status: 400) and return unless result.sucess?
        render_success(payload: nil)
      end

      private 
      def salesman_params
        params.require(:salesman).permit(:name, :qty_wire, :part_number, :dollar_amount_sold, :region)
      end
    end
  end
end