class StudentsController < ApplicationController
	def index
		@students = Student.all
		@employees = Employee.all
	end

	def new
		@student = Student.new
	end

	def edit
		@student = Student.find(params[:id])
	end

	def create
		o = Student.new(params.require(:student).permit!)
		o.save
		redirect_to "/preethi"
	end
	def destroy
		o= Student.find(params[:id])
	    o.destroy
	    redirect_to preethi_path
	end


    def update
		o= Student.find(params[:id])
	    o.update_attributes(params.require(:student).permit!)
	    redirect_to preethi_path
	end




end


