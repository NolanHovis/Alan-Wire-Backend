module Salesman
  def self.new_salesman(params, current_user)
    salesman = Salesman.new(params)
    return ServiceContract.error("Error saving salesman") unless salesman.save
    ServiceContract.success(salesman)
  end

  def self.update_salesman(salesman_id, params, current_user)
    salesman = Salesman.find(salesman_id)
    return ServiceContract.error("Error updating salesman") unless salesman.update(params)
    ServiceContract.success(salesman)
  end

  def self.destroy_salesman(salesman_id, current_user) 
    salesman = Salesman.find(salesman_id)
    ServiceContract.error("Error deleting salesman") and return unless salesman.destroy
    ServiceContract.success(payload: nil)
  end
end