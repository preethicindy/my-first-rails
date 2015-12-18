class EmployeesController < ApplicationController

  def index
  	
  end

  def new
  	@employee = Employee.new 
  end

  def edit
  	@employee = Employee.find(params[:id])
  end

  def create
  	o = Employee.new(params.require(:employee).permit!)
    o.save
	redirect_to "/preethi"
  end

  def update
  	o = Employee.find(params[:id])
  	o.update_attributes(params.require(:employee).permit!)
  	redirect_to preethi_path
  end

  def destroy
  	o = Employee.find(params[:id])
  	o.destroy
  	redirect_to preethi_path
  end
end
