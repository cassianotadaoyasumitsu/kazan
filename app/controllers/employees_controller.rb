class EmployeesController < ApplicationController
  before_action :find_tantosha, except: [:destroy, :index]
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    @employee.tantosha = @tantosha
    if @employee.save
      redirect_to employees_path
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @tantosha = @tantosha.employee_id
    @employee.destroy
    redirect_to employees_path
  end

  private

  def find_tantosha
    @tantosha = Tantosha.find(params[:tantosha_id])

  def employee_params
    params.require(:employee).permit(
      :name, :furigana, :address, :phone,
      :email, :factory, :role, :job_exp, :pay_number, :started_date,
      :licence1, :healthy_exam, :drive_licence, :drive_licence_date,
      :document, :document_date, :passport, :passport_date
    )
  end
end
