class EmployeesController < ApplicationController
  before_action :authenticate_employee!

  def show
    @customers = Customer.all.map{|customer| {id: customer.id, email: customer.email} }
  end
end
