class EmployeesBackofficeController < ApplicationController
  before_action :authenticate_employee!
  layout "employees_backoffice"
end
